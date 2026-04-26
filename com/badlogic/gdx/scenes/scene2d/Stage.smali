.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    }
.end annotation


# static fields
.field static debug:Z


# instance fields
.field private actionsRequestRendering:Z

.field private final batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private debugAll:Z

.field private final debugColor:Lcom/badlogic/gdx/graphics/Color;

.field private debugInvisible:Z

.field private debugParentUnderMouse:Z

.field private debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field private debugUnderMouse:Z

.field private keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseScreenX:I

.field private mouseScreenY:I

.field private ownsBatch:Z

.field private final pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final pointerScreenX:[I

.field private final pointerScreenY:[I

.field private final pointerTouched:[Z

.field private root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final tempCoords:Lcom/badlogic/gdx/math/Vector2;

.field final touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 93
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .registers 3
    .param p1, "viewport"  # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 8
    .param p1, "viewport"  # Lcom/badlogic/gdx/utils/viewport/Viewport;
    .param p2, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 75
    const/16 v0, 0x14

    new-array v1, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 76
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    .line 78
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 83
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 87
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3f59999a  # 0.85f

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    .line 109
    if-eqz p1, :cond_66

    .line 110
    if-eqz p2, :cond_5e

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 112
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 117
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 118
    return-void

    .line 110
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "batch cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "viewport cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 7
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "except"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 176
    if-ne p1, p2, :cond_3

    return-void

    .line 177
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 178
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_21

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 180
    .local v0, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_13
    if-ge v1, v2, :cond_21

    .line 181
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 183
    .end local v0  # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_21
    return-void
.end method

.method private drawDebug()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setAutoShapeType(Z)V

    .line 141
    :cond_11
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v2, :cond_20

    goto :goto_2a

    .line 163
    :cond_20
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_8d

    .line 142
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 144
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_50

    return-void

    .line 146
    :cond_50
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-eqz v2, :cond_5a

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_5a

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 148
    :cond_5a
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v3, :cond_64

    .line 149
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_79

    .line 151
    :cond_64
    :goto_64
    if-eqz v0, :cond_6e

    .line 152
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_6b

    goto :goto_6e

    .line 153
    :cond_6b
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_64

    .line 155
    :cond_6e
    :goto_6e
    if-nez v0, :cond_71

    return-void

    .line 156
    :cond_71
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 159
    :goto_79
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v1, :cond_87

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_87

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 161
    :cond_87
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 162
    .end local v0  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    nop

    .line 166
    :cond_8d
    :goto_8d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin()V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 172
    return-void
.end method

.method private fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 8
    .param p1, "overLast"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "screenX"  # I
    .param p3, "screenY"  # I
    .param p4, "pointer"  # I

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 233
    .local v0, "over":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-ne v0, p1, :cond_1b

    return-object p1

    .line 236
    :cond_1b
    if-eqz p1, :cond_47

    .line 237
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 238
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 239
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 240
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 241
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 242
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 243
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 244
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 245
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 248
    .end local v1  # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_47
    if-eqz v0, :cond_73

    .line 249
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 250
    .restart local v1  # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 252
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 253
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 254
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 255
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 257
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 259
    .end local v1  # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_73
    return-object v0
.end method


# virtual methods
.method public act()V
    .registers 3

    .line 187
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3d088889

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 188
    return-void
.end method

.method public act(F)V
    .registers 8
    .param p1, "delta"  # F

    .line 195
    const/4 v0, 0x0

    .local v0, "pointer":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v1, v1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_68

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v2, v2, v0

    .line 198
    .local v2, "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_55

    .line 199
    if-eqz v2, :cond_65

    .line 200
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 201
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 203
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 204
    .local v3, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 205
    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 206
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 207
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 208
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 209
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 210
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 211
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 212
    .end local v3  # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    goto :goto_65

    .line 216
    :cond_55
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v0

    invoke-direct {p0, v2, v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    aput-object v4, v3, v0

    .line 195
    .end local v2  # "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 219
    .end local v0  # "pointer":I
    .end local v1  # "n":I
    :cond_68
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    .line 220
    .local v0, "type":Lcom/badlogic/gdx/Application$ApplicationType;
    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_7a

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_7a

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_87

    .line 222
    :cond_7a
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    const/4 v4, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 226
    :cond_87
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 227
    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 3
    .param p1, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 559
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 553
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .registers 8
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 457
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 458
    .local v0, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 459
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 460
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 461
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    .line 462
    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    .line 463
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 5
    .param p1, "localRect"  # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "scissorRect"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 759
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->isDrawing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 760
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .local v0, "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_19

    .line 762
    .end local v0  # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 763
    .restart local v0  # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :goto_19
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 764
    return-void
.end method

.method public cancelTouchFocus()V
    .registers 2

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 518
    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 9
    .param p1, "listenerActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 487
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 488
    .local v2, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_c
    if-ge v3, v4, :cond_54

    .line 489
    aget-object v5, v2, v3

    .line 490
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, p1, :cond_15

    goto :goto_51

    .line 491
    :cond_15
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_51

    .line 493
    :cond_1d
    if-nez v0, :cond_38

    .line 494
    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 495
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 496
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 497
    const/high16 v6, -0x31000000

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 498
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 501
    :cond_38
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 502
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 503
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 504
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 505
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 488
    .end local v5  # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 508
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_54
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 510
    if-eqz v0, :cond_5c

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 511
    :cond_5c
    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 10
    .param p1, "exceptListener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "exceptActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 523
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 524
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 525
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 526
    const/high16 v1, -0x31000000

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 527
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 532
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 533
    .local v2, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_23
    if-ge v3, v4, :cond_54

    .line 534
    aget-object v5, v2, v3

    .line 535
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v6, p1, :cond_30

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v6, p2, :cond_30

    goto :goto_51

    .line 536
    :cond_30
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_51

    .line 537
    :cond_38
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 538
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 539
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 540
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 541
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 533
    .end local v5  # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 544
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_54
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 546
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public clear()V
    .registers 2

    .line 593
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 595
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 842
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 843
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 844
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_15

    .line 845
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    .line 846
    :cond_15
    return-void
.end method

.method public draw()V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    .line 122
    .local v0, "camera":Lcom/badlogic/gdx/graphics/Camera;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 126
    :cond_12
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 127
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g2d/Batch;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 128
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 129
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 130
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 132
    sget-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    if-eqz v2, :cond_2d

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->drawDebug()V

    .line 133
    :cond_2d
    return-void
.end method

.method public getActionsRequestRendering()Z
    .registers 2

    .line 774
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    return v0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .param p1, "stageX"  # F
    .param p2, "stageY"  # F
    .param p3, "touchable"  # Z

    .line 728
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 729
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public isDebugAll()Z
    .registers 2

    .line 798
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    return v0
.end method

.method protected isInsideViewport(II)Z
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I

    .line 850
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v0

    .line 851
    .local v0, "x0":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 852
    .local v1, "x1":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v2

    .line 853
    .local v2, "y0":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 854
    .local v3, "y1":I
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    .line 855
    .end local p2  # "screenY":I
    .local v4, "screenY":I
    if-lt p1, v0, :cond_2c

    if-ge p1, v1, :cond_2c

    if-lt v4, v2, :cond_2c

    if-ge v4, v3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    return v5
.end method

.method public keyDown(I)Z
    .registers 5
    .param p1, "keyCode"  # I

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 414
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_9
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 415
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 416
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 417
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 418
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 419
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 420
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 421
    return v2
.end method

.method public keyTyped(C)Z
    .registers 5
    .param p1, "character"  # C

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 442
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_9
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 443
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 444
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 445
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 447
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 448
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 449
    return v2
.end method

.method public keyUp(I)Z
    .registers 5
    .param p1, "keyCode"  # I

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 428
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_9
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 429
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 430
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 431
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 432
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 433
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 434
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 435
    return v2
.end method

.method public mouseMoved(II)Z
    .registers 7
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 369
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 373
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 375
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 376
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 377
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 378
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 379
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 381
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 382
    .local v1, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 384
    :cond_46
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 385
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 386
    .local v2, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 387
    return v2
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 3
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .registers 10
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 470
    .local v0, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_2b

    .line 471
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 472
    .local v2, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_28

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_28

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_28

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v3, p4, :cond_28

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v3, p5, :cond_28

    .line 474
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 475
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 470
    .end local v2  # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 478
    .end local v1  # "i":I
    :cond_2b
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 3
    .param p1, "screenCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 736
    return-object p1
.end method

.method public scrolled(FF)Z
    .registers 7
    .param p1, "amountX"  # F
    .param p2, "amountY"  # F

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 395
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 397
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 398
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 399
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 400
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountX(F)V

    .line 401
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountY(F)V

    .line 402
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 403
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 405
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 406
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 407
    return v2
.end method

.method public setActionsRequestRendering(Z)V
    .registers 2
    .param p1, "actionsRequestRendering"  # Z

    .line 770
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 771
    return-void
.end method

.method public setDebugAll(Z)V
    .registers 5
    .param p1, "debugAll"  # Z

    .line 789
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 790
    :cond_5
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    .line 791
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 792
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_13

    .line 794
    :cond_d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 795
    :goto_13
    return-void
.end method

.method public setDebugInvisible(Z)V
    .registers 2
    .param p1, "debugInvisible"  # Z

    .line 784
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugInvisible:Z

    .line 785
    return-void
.end method

.method public setDebugParentUnderMouse(Z)V
    .registers 5
    .param p1, "debugParentUnderMouse"  # Z

    .line 814
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 815
    :cond_5
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    .line 816
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 817
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_13

    .line 819
    :cond_d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 820
    :goto_13
    return-void
.end method

.method public setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V
    .registers 5
    .param p1, "debugTableUnderMouse"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 826
    if-nez p1, :cond_4

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, p1, :cond_9

    return-void

    .line 828
    :cond_9
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 829
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_13

    .line 830
    sput-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_19

    .line 832
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 833
    :goto_19
    return-void
.end method

.method public setDebugTableUnderMouse(Z)V
    .registers 3
    .param p1, "debugTableUnderMouse"  # Z

    .line 838
    if-eqz p1, :cond_5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V

    .line 839
    return-void
.end method

.method public setDebugUnderMouse(Z)V
    .registers 5
    .param p1, "debugUnderMouse"  # Z

    .line 803
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 804
    :cond_5
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    .line 805
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 806
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_13

    .line 808
    :cond_d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 809
    :goto_13
    return-void
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 7
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    return v1

    .line 616
    :cond_6
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 617
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 618
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 619
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 620
    .local v2, "oldKeyboardFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_24

    .line 621
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 622
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 623
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 625
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 626
    .local v3, "success":Z
    if-eqz v3, :cond_42

    .line 627
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 628
    if-eqz p1, :cond_42

    .line 629
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 630
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 631
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 632
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v4

    xor-int/2addr v1, v4

    move v3, v1

    .line 633
    if-nez v3, :cond_42

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 636
    :cond_42
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 637
    return v3
.end method

.method public setRoot(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .registers 4
    .param p1, "root"  # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 716
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 717
    :cond_a
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 719
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 720
    return-void
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 7
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    return v1

    .line 651
    :cond_6
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 652
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 653
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->scroll:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 654
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 655
    .local v2, "oldScrollFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_24

    .line 656
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 657
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 658
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 660
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 661
    .local v3, "success":Z
    if-eqz v3, :cond_42

    .line 662
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 663
    if-eqz p1, :cond_42

    .line 664
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 665
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 666
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 667
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v4

    xor-int/2addr v1, v4

    move v3, v1

    .line 668
    if-nez v3, :cond_42

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 671
    :cond_42
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 672
    return v3
.end method

.method public setViewport(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .registers 2
    .param p1, "viewport"  # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 690
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 691
    return-void
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "stageCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 742
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 743
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 744
    return-object p1
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "coords"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "transformMatrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public touchDown(IIII)Z
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 273
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 274
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 275
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 276
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 277
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 278
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 279
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 281
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 282
    .local v1, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v1, :cond_62

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v2, v3, :cond_65

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_65

    .line 285
    :cond_62
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 287
    :cond_65
    :goto_65
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 288
    .local v2, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 289
    return v2
.end method

.method public touchDragged(III)Z
    .registers 11
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 297
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 298
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 304
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 305
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 306
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 307
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 309
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 312
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 313
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_4b
    if-ge v3, v4, :cond_74

    .line 314
    aget-object v5, v2, v3

    .line 315
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-eq v6, p3, :cond_54

    goto :goto_71

    .line 316
    :cond_54
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->contains(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_5c

    goto :goto_71

    .line 317
    :cond_5c
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 318
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 319
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 313
    .end local v5  # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 321
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_74
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 323
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 324
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 325
    return v3
.end method

.method public touchUp(IIII)Z
    .registers 12
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p3

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_14

    return v1

    .line 337
    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 339
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 340
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 341
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 342
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 344
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 345
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 348
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 349
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_4e
    if-ge v3, v4, :cond_7e

    .line 350
    aget-object v5, v2, v3

    .line 351
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v6, p3, :cond_7b

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-eq v6, p4, :cond_5b

    goto :goto_7b

    .line 352
    :cond_5b
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_63

    goto :goto_7b

    .line 353
    :cond_63
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 354
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 355
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 356
    :cond_78
    invoke-static {v5}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 349
    .end local v5  # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 358
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_7e
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 360
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 361
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 362
    return v3
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 606
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 608
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 609
    :cond_22
    return-void
.end method

.method public unfocusAll()V
    .registers 2

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 600
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 601
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    .line 602
    return-void
.end method
