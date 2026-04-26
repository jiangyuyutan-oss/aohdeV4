.class public Lcom/badlogic/gdx/graphics/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    }
.end annotation


# static fields
.field static final meshes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field autoBind:Z

.field final indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

.field instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

.field isInstanced:Z

.field final isVertexArray:Z

.field private final tmpV:Lcom/badlogic/gdx/math/Vector3;

.field final vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 10
    .param p1, "type"  # Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .param p2, "isStatic"  # Z
    .param p3, "maxVertices"  # I
    .param p4, "maxIndices"  # I
    .param p5, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 760
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 170
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$1;->$SwitchMap$com$badlogic$gdx$graphics$Mesh$VertexDataType:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_66

    .line 188
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v1, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 189
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v1, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 190
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_5f

    .line 182
    :pswitch_2c  #0x3
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 183
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 184
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 185
    goto :goto_5f

    .line 177
    :pswitch_3d  #0x2
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 178
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 179
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 180
    goto :goto_5f

    .line 172
    :pswitch_4e  #0x1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 173
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 174
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 175
    nop

    .line 194
    :goto_5f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 195
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_3d  #00000002
        :pswitch_2c  #00000003
    .end packed-switch
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 12
    .param p1, "type"  # Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .param p2, "isStatic"  # Z
    .param p3, "maxVertices"  # I
    .param p4, "maxIndices"  # I
    .param p5, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 159
    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v5, p5}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 160
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/VertexData;Lcom/badlogic/gdx/graphics/glutils/IndexData;Z)V
    .registers 5
    .param p1, "vertices"  # Lcom/badlogic/gdx/graphics/glutils/VertexData;
    .param p2, "indices"  # Lcom/badlogic/gdx/graphics/glutils/IndexData;
    .param p3, "isVertexArray"  # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 760
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 88
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 89
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 91
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 7
    .param p1, "isStatic"  # Z
    .param p2, "maxVertices"  # I
    .param p3, "maxIndices"  # I
    .param p4, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 760
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 117
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 118
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 119
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 121
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 122
    return-void
.end method

.method public varargs constructor <init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 7
    .param p1, "isStatic"  # Z
    .param p2, "maxVertices"  # I
    .param p3, "maxIndices"  # I
    .param p4, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 760
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 102
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v1, p4}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 103
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 104
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 106
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 107
    return-void
.end method

.method public constructor <init>(ZZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 8
    .param p1, "staticVertices"  # Z
    .param p2, "staticIndices"  # Z
    .param p3, "maxVertices"  # I
    .param p4, "maxIndices"  # I
    .param p5, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 760
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 135
    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 136
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 137
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 139
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 140
    return-void
.end method

.method private static addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;
    .param p1, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;

    .line 953
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 954
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 955
    :cond_10
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 956
    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    return-void
.end method

.method public static clearAllMeshes(Lcom/badlogic/gdx/Application;)V
    .registers 2
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 972
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 5

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 978
    .local v1, "i":I
    const-string v2, "Managed meshes/app: { "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/Application;

    .line 980
    .local v3, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .end local v3  # "app":Lcom/badlogic/gdx/Application;
    goto :goto_15

    .line 983
    :cond_34
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 962
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 963
    .local v0, "meshesArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v0, :cond_b

    return-void

    .line 964
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_29

    .line 965
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->invalidate()V

    .line 966
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->invalidate()V

    .line 964
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 968
    .end local v1  # "i":I
    :cond_29
    return-void
.end method

.method private makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;
    .registers 5
    .param p1, "isStatic"  # Z
    .param p2, "maxVertices"  # I
    .param p3, "vertexAttributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 143
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_a

    .line 144
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-object v0

    .line 146
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-object v0
.end method

.method public static transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V
    .registers 13
    .param p0, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "vertices"  # [F
    .param p2, "vertexSize"  # I
    .param p3, "offset"  # I
    .param p4, "dimensions"  # I
    .param p5, "start"  # I
    .param p6, "count"  # I

    .line 1066
    if-ltz p3, :cond_b5

    const/4 v0, 0x1

    if-lt p4, v0, :cond_b5

    add-int v1, p3, p4

    if-gt v1, p2, :cond_b5

    .line 1067
    if-ltz p5, :cond_7d

    if-lt p6, v0, :cond_7d

    add-int v0, p5, p6

    mul-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_7d

    .line 1071
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 1073
    .local v0, "tmp":Lcom/badlogic/gdx/math/Vector3;
    mul-int v1, p5, p2

    add-int/2addr v1, p3

    .line 1074
    .local v1, "idx":I
    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_bc

    goto :goto_7c

    .line 1091
    :pswitch_20  #0x3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, p6, :cond_7c

    .line 1092
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1093
    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v1

    .line 1094
    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, p1, v3

    .line 1095
    add-int/lit8 v3, v1, 0x2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, p1, v3

    .line 1096
    add-int/2addr v1, p2

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1083
    .end local v2  # "i":I
    :pswitch_48  #0x2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_49
    if-ge v3, p6, :cond_66

    .line 1084
    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1085
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, p1, v1

    .line 1086
    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v5, p1, v4

    .line 1087
    add-int/2addr v1, p2

    .line 1083
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1089
    .end local v3  # "i":I
    :cond_66
    goto :goto_7c

    .line 1076
    :pswitch_67  #0x1
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_68
    if-ge v3, p6, :cond_7b

    .line 1077
    aget v4, p1, v1

    invoke-virtual {v0, v4, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1078
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, p1, v1

    .line 1079
    add-int/2addr v1, p2

    .line 1076
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 1081
    .end local v3  # "i":I
    :cond_7b
    nop

    .line 1100
    :cond_7c
    :goto_7c
    return-void

    .line 1068
    .end local v0  # "tmp":Lcom/badlogic/gdx/math/Vector3;
    .end local v1  # "idx":I
    :cond_7d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vertexSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_b5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_67  #00000001
        :pswitch_48  #00000002
        :pswitch_20  #00000003
    .end packed-switch
.end method

.method public static transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V
    .registers 11
    .param p0, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p1, "vertices"  # [F
    .param p2, "vertexSize"  # I
    .param p3, "offset"  # I
    .param p4, "start"  # I
    .param p5, "count"  # I

    .line 1133
    if-ltz p4, :cond_32

    const/4 v0, 0x1

    if-lt p5, v0, :cond_32

    add-int v0, p4, p5

    mul-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_32

    .line 1137
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 1139
    .local v0, "tmp":Lcom/badlogic/gdx/math/Vector2;
    mul-int v1, p4, p2

    add-int/2addr v1, p3

    .line 1140
    .local v1, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, p5, :cond_31

    .line 1141
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector2;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;

    .line 1142
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, p1, v1

    .line 1143
    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, p1, v3

    .line 1144
    add-int/2addr v1, p2

    .line 1140
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1146
    .end local v2  # "i":I
    :cond_31
    return-void

    .line 1134
    .end local v0  # "tmp":Lcom/badlogic/gdx/math/Vector2;
    .end local v1  # "idx":I
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vertexSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 504
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 4
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 514
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->bind()V

    .line 515
    :cond_23
    return-void
.end method

.method public calculateBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 2

    .line 691
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 692
    .local v0, "bbox":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 693
    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 5
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 739
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 6
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 748
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .registers 12
    .param p1, "bbox"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 701
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    .line 702
    .local v0, "numVertices":I
    if-eqz v0, :cond_69

    .line 704
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 705
    .local v1, "verts":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 706
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    .line 707
    .local v2, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v3, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v3, v3, 0x4

    .line 708
    .local v3, "offset":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v4, v4, 0x4

    .line 709
    .local v4, "vertexSize":I
    move v5, v3

    .line 711
    .local v5, "idx":I
    iget v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_72

    goto :goto_68

    .line 725
    :pswitch_2a  #0x3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2b
    if-ge v6, v0, :cond_68

    .line 726
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 727
    add-int/2addr v5, v4

    .line 725
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 719
    .end local v6  # "i":I
    :pswitch_44  #0x2
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_45
    if-ge v6, v0, :cond_58

    .line 720
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v8, v9, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 721
    add-int/2addr v5, v4

    .line 719
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 723
    .end local v6  # "i":I
    :cond_58
    goto :goto_68

    .line 713
    :pswitch_59  #0x1
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_5a
    if-ge v6, v0, :cond_67

    .line 714
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {p1, v8, v7, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 715
    add-int/2addr v5, v4

    .line 713
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 717
    .end local v6  # "i":I
    :cond_67
    nop

    .line 731
    :cond_68
    :goto_68
    return-void

    .line 702
    .end local v1  # "verts":Ljava/nio/FloatBuffer;
    .end local v2  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v3  # "offset":I
    .end local v4  # "vertexSize":I
    .end local v5  # "idx":I
    :cond_69
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "No vertices defined"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_59  #00000001
        :pswitch_44  #00000002
        :pswitch_2a  #00000003
    .end packed-switch
.end method

.method public calculateRadius(FFF)F
    .registers 11
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "centerZ"  # F

    .line 937
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFII)F
    .registers 13
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "centerZ"  # F
    .param p4, "offset"  # I
    .param p5, "count"  # I

    .line 919
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .registers 9
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "centerZ"  # F
    .param p4, "offset"  # I
    .param p5, "count"  # I
    .param p6, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 899
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;)F
    .registers 9
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;

    .line 944
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;II)F
    .registers 11
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 928
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;IILcom/badlogic/gdx/math/Matrix4;)F
    .registers 12
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 908
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .registers 27
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "centerZ"  # F
    .param p4, "offset"  # I
    .param p5, "count"  # I
    .param p6, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 846
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    .line 847
    .local v6, "numIndices":I
    if-ltz p4, :cond_10e

    const/4 v7, 0x1

    if-lt v4, v7, :cond_10e

    add-int v8, p4, v4

    if-gt v8, v6, :cond_10e

    .line 849
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 850
    .local v8, "verts":Ljava/nio/FloatBuffer;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v9}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v9

    .line 851
    .local v9, "index":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 852
    .local v7, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v10, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v10, v10, 0x4

    .line 853
    .local v10, "posoff":I
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v11}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v11

    iget v11, v11, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v11, v11, 0x4

    .line 854
    .local v11, "vertexSize":I
    add-int v12, p4, v4

    .line 856
    .local v12, "end":I
    const/4 v13, 0x0

    .line 858
    .local v13, "result":F
    iget v14, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v15, 0x0

    const v16, 0xffff

    packed-switch v14, :pswitch_data_118

    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v10

    .end local v6  # "numIndices":I
    .end local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v10  # "posoff":I
    .local v17, "numIndices":I
    .local v18, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v19, "posoff":I
    goto/16 :goto_10d

    .line 878
    .end local v17  # "numIndices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "posoff":I
    .restart local v6  # "numIndices":I
    .restart local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v10  # "posoff":I
    :pswitch_4b  #0x3
    move/from16 v14, p4

    .local v14, "i":I
    :goto_4d
    if-ge v14, v12, :cond_93

    .line 879
    invoke-virtual {v9, v14}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    and-int v15, v15, v16

    mul-int/2addr v15, v11

    add-int/2addr v15, v10

    .line 880
    .local v15, "idx":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v17, v6

    .end local v6  # "numIndices":I
    .restart local v17  # "numIndices":I
    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    move-object/from16 v18, v7

    .end local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    move/from16 v19, v10

    .end local v10  # "posoff":I
    .restart local v19  # "posoff":I
    add-int/lit8 v10, v15, 0x2

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-virtual {v4, v6, v7, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 881
    if-eqz v5, :cond_79

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 882
    :cond_79
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v4

    .line 883
    .local v4, "r":F
    cmpl-float v6, v4, v13

    if-lez v6, :cond_88

    move v13, v4

    .line 878
    .end local v4  # "r":F
    .end local v15  # "idx":I
    :cond_88
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p5

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v10, v19

    goto :goto_4d

    .end local v17  # "numIndices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "posoff":I
    .restart local v6  # "numIndices":I
    .restart local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v10  # "posoff":I
    :cond_93
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v10

    .end local v6  # "numIndices":I
    .end local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v10  # "posoff":I
    .restart local v17  # "numIndices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "posoff":I
    goto/16 :goto_10d

    .line 869
    .end local v14  # "i":I
    .end local v17  # "numIndices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "posoff":I
    .restart local v6  # "numIndices":I
    .restart local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v10  # "posoff":I
    :pswitch_9b  #0x2
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v10

    .end local v6  # "numIndices":I
    .end local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v10  # "posoff":I
    .restart local v17  # "numIndices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "posoff":I
    move/from16 v4, p4

    .local v4, "i":I
    :goto_a3
    if-ge v4, v12, :cond_d6

    .line 870
    invoke-virtual {v9, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    and-int v6, v6, v16

    mul-int/2addr v6, v11

    add-int v6, v6, v19

    .line 871
    .local v6, "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v8, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    invoke-virtual {v7, v10, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 872
    if-eqz v5, :cond_c4

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 873
    :cond_c4
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v7

    .line 874
    .local v7, "r":F
    cmpl-float v10, v7, v13

    if-lez v10, :cond_d3

    move v13, v7

    .line 869
    .end local v6  # "idx":I
    .end local v7  # "r":F
    :cond_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 876
    .end local v4  # "i":I
    :cond_d6
    goto :goto_10d

    .line 860
    .end local v17  # "numIndices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "posoff":I
    .local v6, "numIndices":I
    .local v7, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v10  # "posoff":I
    :pswitch_d7  #0x1
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v10

    .end local v6  # "numIndices":I
    .end local v7  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v10  # "posoff":I
    .restart local v17  # "numIndices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "posoff":I
    move/from16 v4, p4

    .restart local v4  # "i":I
    :goto_df
    if-ge v4, v12, :cond_10c

    .line 861
    invoke-virtual {v9, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    and-int v6, v6, v16

    mul-int/2addr v6, v11

    add-int v6, v6, v19

    .line 862
    .local v6, "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-virtual {v7, v10, v15, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 863
    if-eqz v5, :cond_fa

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 864
    :cond_fa
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v7

    .line 865
    .local v7, "r":F
    cmpl-float v10, v7, v13

    if-lez v10, :cond_109

    move v13, v7

    .line 860
    .end local v6  # "idx":I
    .end local v7  # "r":F
    :cond_109
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 867
    .end local v4  # "i":I
    :cond_10c
    nop

    .line 887
    :goto_10d
    return v13

    .line 847
    .end local v8  # "verts":Ljava/nio/FloatBuffer;
    .end local v9  # "index":Ljava/nio/ShortBuffer;
    .end local v11  # "vertexSize":I
    .end local v12  # "end":I
    .end local v13  # "result":F
    .end local v17  # "numIndices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "posoff":I
    .local v6, "numIndices":I
    :cond_10e
    move/from16 v17, v6

    .end local v6  # "numIndices":I
    .restart local v17  # "numIndices":I
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Not enough indices"

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_d7  #00000001
        :pswitch_9b  #00000002
        :pswitch_4b  #00000003
    .end packed-switch
.end method

.method public copy(Z)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 4
    .param p1, "isStatic"  # Z

    .line 1244
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 25
    .param p1, "isStatic"  # Z
    .param p2, "removeDuplicates"  # Z
    .param p3, "usage"  # [I

    .line 1157
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    .line 1158
    .local v3, "vertexSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v4

    .line 1159
    .local v4, "numVertices":I
    mul-int v5, v4, v3

    new-array v5, v5, [F

    .line 1160
    .local v5, "vertices":[F
    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1161
    const/4 v6, 0x0

    .line 1162
    .local v6, "checks":[S
    const/4 v8, 0x0

    .line 1163
    .local v8, "attrs":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v9, 0x0

    .line 1164
    .local v9, "newVertexSize":I
    if-eqz v2, :cond_75

    .line 1165
    const/4 v10, 0x0

    .line 1166
    .local v10, "size":I
    const/4 v11, 0x0

    .line 1167
    .local v11, "as":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_21
    array-length v13, v2

    if-ge v12, v13, :cond_3a

    .line 1168
    aget v13, v2, v12

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    if-eqz v13, :cond_37

    .line 1169
    aget v13, v2, v12

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    iget v13, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v10, v13

    .line 1170
    add-int/lit8 v11, v11, 0x1

    .line 1167
    :cond_37
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    .line 1172
    .end local v12  # "i":I
    :cond_3a
    if-lez v10, :cond_75

    .line 1173
    new-array v8, v11, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 1174
    new-array v6, v10, [S

    .line 1175
    const/4 v12, -0x1

    .line 1176
    .local v12, "idx":I
    const/4 v13, -0x1

    .line 1177
    .local v13, "ai":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_43
    array-length v15, v2

    if-ge v14, v15, :cond_75

    .line 1178
    aget v15, v2, v14

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v15

    .line 1179
    .local v15, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v15, :cond_4f

    goto :goto_6f

    .line 1180
    :cond_4f
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "j":I
    :goto_53
    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ge v7, v2, :cond_64

    .line 1181
    add-int/lit8 v12, v12, 0x1

    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    add-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, v6, v12

    .line 1180
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_53

    .line 1182
    .end local v7  # "j":I
    :cond_64
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;->copy()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    aput-object v2, v8, v13

    .line 1183
    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v9, v2

    .line 1177
    .end local v15  # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :goto_6f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    const/4 v7, 0x0

    goto :goto_43

    .line 1187
    .end local v10  # "size":I
    .end local v11  # "as":I
    .end local v12  # "idx":I
    .end local v13  # "ai":I
    .end local v14  # "i":I
    :cond_75
    if-nez v6, :cond_83

    .line 1188
    new-array v6, v3, [S

    .line 1189
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_7a
    if-ge v2, v3, :cond_82

    .line 1190
    aput-short v2, v6, v2

    .line 1189
    add-int/lit8 v7, v2, 0x1

    int-to-short v2, v7

    goto :goto_7a

    .line 1191
    .end local v2  # "i":S
    :cond_82
    move v9, v3

    .line 1194
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    .line 1195
    .local v2, "numIndices":I
    const/4 v7, 0x0

    .line 1196
    .local v7, "indices":[S
    if-lez v2, :cond_108

    .line 1197
    new-array v7, v2, [S

    .line 1198
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 1199
    if-nez p2, :cond_98

    if-eq v9, v3, :cond_94

    goto :goto_98

    :cond_94
    move/from16 v19, v2

    goto/16 :goto_10a

    .line 1200
    :cond_98
    :goto_98
    array-length v10, v5

    new-array v10, v10, [F

    .line 1201
    .local v10, "tmp":[F
    const/4 v11, 0x0

    .line 1202
    .local v11, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9d
    if-ge v12, v2, :cond_103

    .line 1203
    aget-short v13, v7, v12

    mul-int/2addr v13, v3

    .line 1204
    .local v13, "idx1":I
    const/4 v14, -0x1

    .line 1205
    .local v14, "newIndex":S
    if-eqz p2, :cond_dd

    .line 1206
    const/4 v15, 0x0

    .local v15, "j":S
    :goto_a6
    if-ge v15, v11, :cond_da

    if-gez v14, :cond_da

    .line 1207
    mul-int v17, v15, v9

    .line 1208
    .local v17, "idx2":I
    const/16 v18, 0x1

    .line 1209
    .local v18, "found":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    .local v0, "k":I
    :goto_b2
    move/from16 v19, v2

    .end local v2  # "numIndices":I
    .local v19, "numIndices":I
    array-length v2, v6

    if-ge v0, v2, :cond_cf

    if-eqz v18, :cond_cf

    .line 1210
    add-int v2, v17, v0

    aget v2, v10, v2

    aget-short v20, v6, v0

    add-int v20, v13, v20

    aget v20, v5, v20

    cmpl-float v2, v2, v20

    if-eqz v2, :cond_ca

    const/4 v2, 0x0

    move/from16 v18, v2

    .line 1209
    :cond_ca
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v19

    goto :goto_b2

    .line 1212
    .end local v0  # "k":I
    :cond_cf
    if-eqz v18, :cond_d2

    move v14, v15

    .line 1206
    .end local v17  # "idx2":I
    .end local v18  # "found":Z
    :cond_d2
    add-int/lit8 v0, v15, 0x1

    int-to-short v15, v0

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_a6

    .end local v19  # "numIndices":I
    .restart local v2  # "numIndices":I
    :cond_da
    move/from16 v19, v2

    .end local v2  # "numIndices":I
    .restart local v19  # "numIndices":I
    goto :goto_df

    .line 1205
    .end local v15  # "j":S
    .end local v19  # "numIndices":I
    .restart local v2  # "numIndices":I
    :cond_dd
    move/from16 v19, v2

    .line 1215
    .end local v2  # "numIndices":I
    .restart local v19  # "numIndices":I
    :goto_df
    if-lez v14, :cond_e4

    .line 1216
    aput-short v14, v7, v12

    goto :goto_fc

    .line 1218
    :cond_e4
    mul-int v0, v11, v9

    .line 1219
    .local v0, "idx":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e7
    array-length v15, v6

    if-ge v2, v15, :cond_f7

    .line 1220
    add-int v15, v0, v2

    aget-short v17, v6, v2

    add-int v17, v13, v17

    aget v17, v5, v17

    aput v17, v10, v15

    .line 1219
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 1221
    .end local v2  # "j":I
    :cond_f7
    int-to-short v2, v11

    aput-short v2, v7, v12

    .line 1222
    add-int/lit8 v11, v11, 0x1

    .line 1202
    .end local v0  # "idx":I
    .end local v13  # "idx1":I
    .end local v14  # "newIndex":S
    :goto_fc
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_9d

    .end local v19  # "numIndices":I
    .local v2, "numIndices":I
    :cond_103
    move/from16 v19, v2

    .line 1225
    .end local v2  # "numIndices":I
    .end local v12  # "i":I
    .restart local v19  # "numIndices":I
    move-object v5, v10

    .line 1226
    move v4, v11

    goto :goto_10a

    .line 1196
    .end local v10  # "tmp":[F
    .end local v11  # "size":I
    .end local v19  # "numIndices":I
    .restart local v2  # "numIndices":I
    :cond_108
    move/from16 v19, v2

    .line 1231
    .end local v2  # "numIndices":I
    .restart local v19  # "numIndices":I
    :goto_10a
    if-nez v8, :cond_11b

    .line 1232
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v7, :cond_112

    const/4 v2, 0x0

    goto :goto_113

    :cond_112
    array-length v2, v7

    :goto_113
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v10

    invoke-direct {v0, v1, v4, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .local v0, "result":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_125

    .line 1234
    .end local v0  # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_11b
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v7, :cond_121

    const/4 v2, 0x0

    goto :goto_122

    :cond_121
    array-length v2, v7

    :goto_122
    invoke-direct {v0, v1, v4, v2, v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 1235
    .restart local v0  # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :goto_125
    mul-int v2, v4, v9

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1236
    if-eqz v7, :cond_130

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1237
    :cond_130
    return-object v0
.end method

.method public disableInstancedRendering()Lcom/badlogic/gdx/graphics/Mesh;
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v0, :cond_f

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->dispose()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    .line 214
    :cond_f
    return-object p0
.end method

.method public dispose()V
    .registers 3

    .line 657
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 658
    :cond_18
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->dispose()V

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->dispose()V

    .line 660
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->dispose()V

    .line 661
    return-void
.end method

.method public varargs enableInstancedRendering(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "isStatic"  # Z
    .param p2, "maxInstances"  # I
    .param p3, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 198
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-nez v0, :cond_f

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    .line 205
    return-object p0

    .line 202
    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Trying to enable InstancedRendering on same Mesh instance twice. Use disableInstancedRendering to clean up old InstanceData first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 5
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 25
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    .line 769
    .local v5, "numIndices":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v6

    .line 770
    .local v6, "numVertices":I
    if-nez v5, :cond_16

    move v7, v6

    goto :goto_17

    :cond_16
    move v7, v5

    .line 771
    .local v7, "max":I
    :goto_17
    if-ltz v2, :cond_176

    const/4 v8, 0x1

    if-lt v3, v8, :cond_176

    add-int v9, v2, v3

    if-gt v9, v7, :cond_176

    .line 774
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v9}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 775
    .local v9, "verts":Ljava/nio/FloatBuffer;
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v10}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 776
    .local v10, "index":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    .line 777
    .local v8, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v11, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v11, v11, 0x4

    .line 778
    .local v11, "posoff":I
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v12}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v12

    iget v12, v12, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v12, v12, 0x4

    .line 779
    .local v12, "vertexSize":I
    add-int v13, v2, v3

    .line 781
    .local v13, "end":I
    iget v14, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v15, 0x0

    packed-switch v14, :pswitch_data_1b2

    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v17, "numVertices":I
    .local v18, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v19, "max":I
    goto/16 :goto_175

    .line 817
    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .restart local v6  # "numVertices":I
    .restart local v7  # "max":I
    .restart local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :pswitch_4e  #0x3
    if-lez v5, :cond_99

    .line 818
    move/from16 v14, p2

    .local v14, "i":I
    :goto_52
    if-ge v14, v13, :cond_91

    .line 819
    invoke-virtual {v10, v14}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    const v16, 0xffff

    and-int v15, v15, v16

    mul-int/2addr v15, v12

    add-int/2addr v15, v11

    .line 820
    .local v15, "idx":I
    move/from16 v17, v6

    .end local v6  # "numVertices":I
    .restart local v17  # "numVertices":I
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v18, v8

    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    move/from16 v19, v7

    .end local v7  # "max":I
    .restart local v19  # "max":I
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v3, v15, 0x2

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v6, v8, v7, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 821
    if-eqz v4, :cond_81

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 822
    :cond_81
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 818
    .end local v15  # "idx":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p3

    move/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v7, v19

    goto :goto_52

    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .restart local v6  # "numVertices":I
    .restart local v7  # "max":I
    .restart local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_91
    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14  # "i":I
    .restart local v17  # "numVertices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "max":I
    goto/16 :goto_175

    .line 825
    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .restart local v6  # "numVertices":I
    .restart local v7  # "max":I
    .restart local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_99
    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17  # "numVertices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "max":I
    move/from16 v3, p2

    .local v3, "i":I
    :goto_a1
    if-ge v3, v13, :cond_175

    .line 826
    mul-int v6, v3, v12

    add-int/2addr v6, v11

    .line 827
    .local v6, "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v9, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v7, v8, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 828
    if-eqz v4, :cond_c2

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 829
    :cond_c2
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 825
    .end local v6  # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 800
    .end local v3  # "i":I
    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .local v6, "numVertices":I
    .restart local v7  # "max":I
    .restart local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :pswitch_ca  #0x2
    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17  # "numVertices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "max":I
    if-lez v5, :cond_100

    .line 801
    move/from16 v3, p2

    .restart local v3  # "i":I
    :goto_d4
    if-ge v3, v13, :cond_fe

    .line 802
    invoke-virtual {v10, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    mul-int/2addr v6, v12

    add-int/2addr v6, v11

    .line 803
    .local v6, "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v9, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    invoke-virtual {v7, v8, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 804
    if-eqz v4, :cond_f6

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 805
    :cond_f6
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 801
    .end local v6  # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .end local v3  # "i":I
    :cond_fe
    goto/16 :goto_175

    .line 808
    :cond_100
    move/from16 v3, p2

    .restart local v3  # "i":I
    :goto_102
    if-ge v3, v13, :cond_125

    .line 809
    mul-int v6, v3, v12

    add-int/2addr v6, v11

    .line 810
    .restart local v6  # "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v9, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    invoke-virtual {v7, v8, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 811
    if-eqz v4, :cond_11d

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 812
    :cond_11d
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 808
    .end local v6  # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_102

    .line 815
    .end local v3  # "i":I
    :cond_125
    goto :goto_175

    .line 783
    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .local v6, "numVertices":I
    .restart local v7  # "max":I
    .restart local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :pswitch_126  #0x1
    move/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .end local v8  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17  # "numVertices":I
    .restart local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v19  # "max":I
    if-lez v5, :cond_155

    .line 784
    move/from16 v3, p2

    .restart local v3  # "i":I
    :goto_130
    if-ge v3, v13, :cond_154

    .line 785
    invoke-virtual {v10, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    mul-int/2addr v6, v12

    add-int/2addr v6, v11

    .line 786
    .local v6, "idx":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    invoke-virtual {v8, v14, v15, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 787
    if-eqz v4, :cond_14c

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 788
    :cond_14c
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 784
    .end local v6  # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_130

    .end local v3  # "i":I
    :cond_154
    goto :goto_175

    .line 791
    :cond_155
    move/from16 v3, p2

    .restart local v3  # "i":I
    :goto_157
    if-ge v3, v13, :cond_174

    .line 792
    mul-int v6, v3, v12

    add-int/2addr v6, v11

    .line 793
    .restart local v6  # "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    invoke-virtual {v7, v8, v15, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 794
    if-eqz v4, :cond_16c

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 795
    :cond_16c
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 791
    .end local v6  # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_157

    .line 798
    .end local v3  # "i":I
    :cond_174
    nop

    .line 834
    :cond_175
    :goto_175
    return-object v1

    .line 771
    .end local v9  # "verts":Ljava/nio/FloatBuffer;
    .end local v10  # "index":Ljava/nio/ShortBuffer;
    .end local v11  # "posoff":I
    .end local v12  # "vertexSize":I
    .end local v13  # "end":I
    .end local v17  # "numVertices":I
    .end local v18  # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v19  # "max":I
    .local v6, "numVertices":I
    .restart local v7  # "max":I
    :cond_176
    move/from16 v17, v6

    move/from16 v19, v7

    .line 772
    .end local v6  # "numVertices":I
    .end local v7  # "max":I
    .restart local v17  # "numVertices":I
    .restart local v19  # "max":I
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid part specified ( offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", max="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v8, v19

    .end local v19  # "max":I
    .local v8, "max":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " )"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_126  #00000001
        :pswitch_ca  #00000002
        :pswitch_4e  #00000003
    .end packed-switch
.end method

.method public getIndices(II[SI)V
    .registers 9
    .param p1, "srcOffset"  # I
    .param p2, "count"  # I
    .param p3, "indices"  # [S
    .param p4, "destOffset"  # I

    .line 450
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    .line 451
    .local v0, "max":I
    if-gez p2, :cond_8

    sub-int p2, v0, p1

    .line 452
    :cond_8
    if-ltz p1, :cond_56

    if-ge p1, v0, :cond_56

    add-int v1, p1, p2

    if-gt v1, v0, :cond_56

    .line 455
    array-length v1, p3

    sub-int/2addr v1, p4

    if-lt v1, p2, :cond_32

    .line 457
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 458
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 459
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 460
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 461
    return-void

    .line 456
    .end local v1  # "pos":I
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not enough room in indices array, has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shorts, needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid range specified, offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIndices(I[SI)V
    .registers 5
    .param p1, "srcOffset"  # I
    .param p2, "indices"  # [S
    .param p3, "destOffset"  # I

    .line 440
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 441
    return-void
.end method

.method public getIndices([S)V
    .registers 3
    .param p1, "indices"  # [S

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([SI)V

    .line 424
    return-void
.end method

.method public getIndices([SI)V
    .registers 4
    .param p1, "indices"  # [S
    .param p2, "destOffset"  # I

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(I[SI)V

    .line 432
    return-void
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndices()I
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    return v0
.end method

.method public getMaxVertices()I
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumMaxVertices()I

    move-result v0

    return v0
.end method

.method public getNumIndices()I
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumVertices()I

    move-result v0

    return v0
.end method

.method public getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 6
    .param p1, "usage"  # I

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    .line 669
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 670
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 671
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v3, p1, :cond_1a

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    return-object v3

    .line 670
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 673
    .end local v2  # "i":I
    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method public getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getVertexSize()I
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    return v0
.end method

.method public getVertices(II[F)[F
    .registers 5
    .param p1, "srcOffset"  # I
    .param p2, "count"  # I
    .param p3, "vertices"  # [F

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(II[FI)[F
    .registers 9
    .param p1, "srcOffset"  # I
    .param p2, "count"  # I
    .param p3, "vertices"  # [F
    .param p4, "destOffset"  # I

    .line 381
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 382
    .local v0, "max":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_17

    .line 383
    sub-int p2, v0, p1

    .line 384
    array-length v1, p3

    sub-int/2addr v1, p4

    if-le p2, v1, :cond_17

    array-length v1, p3

    sub-int p2, v1, p4

    .line 386
    :cond_17
    if-ltz p1, :cond_6a

    if-lez p2, :cond_6a

    add-int v1, p1, p2

    if-gt v1, v0, :cond_6a

    if-ltz p4, :cond_6a

    array-length v1, p3

    if-ge p4, v1, :cond_6a

    .line 388
    array-length v1, p3

    sub-int/2addr v1, p4

    if-lt v1, p2, :cond_46

    .line 391
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 392
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 393
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 394
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 395
    return-object p3

    .line 389
    .end local v1  # "pos":I
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not enough room in vertices array, has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " floats, needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_6a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getVertices(I[F)[F
    .registers 4
    .param p1, "srcOffset"  # I
    .param p2, "vertices"  # [F

    .line 362
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices([F)[F
    .registers 4
    .param p1, "vertices"  # [F

    .line 354
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVerticesBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isInstanced()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .registers 10
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"  # I

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    :goto_11
    move v5, v0

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 557
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V
    .registers 11
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"  # I
    .param p3, "offset"  # I
    .param p4, "count"  # I

    .line 583
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 584
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V
    .registers 14
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"  # I
    .param p3, "offset"  # I
    .param p4, "count"  # I
    .param p5, "autoBind"  # Z

    .line 611
    if-nez p4, :cond_3

    return-void

    .line 613
    :cond_3
    if-eqz p5, :cond_8

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 615
    :cond_8
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    const/16 v1, 0x1403

    if-eqz v0, :cond_40

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_39

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 618
    .local v0, "buffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 619
    .local v2, "oldPosition":I
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    .line 620
    .local v3, "oldLimit":I
    invoke-virtual {v0, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 621
    add-int v4, p3, p4

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 622
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, p2, p4, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 623
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 624
    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 625
    .end local v0  # "buffer":Ljava/nio/ShortBuffer;
    .end local v2  # "oldPosition":I
    .end local v3  # "oldLimit":I
    goto/16 :goto_c2

    .line 626
    :cond_39
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto/16 :goto_c2

    .line 629
    :cond_40
    const/4 v0, 0x0

    .line 630
    .local v0, "numInstances":I
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    .line 632
    :cond_4b
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v2

    if-lez v2, :cond_b1

    .line 633
    add-int v2, p4, p3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v3

    if-gt v2, v3, :cond_78

    .line 638
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v2, :cond_70

    if-lez v0, :cond_70

    .line 639
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/16 v5, 0x1403

    mul-int/lit8 v6, p3, 0x2

    move v3, p2

    move v4, p4

    move v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElementsInstanced(IIIII)V

    goto :goto_c2

    .line 641
    :cond_70
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v3, p3, 0x2

    invoke-interface {v2, p2, p4, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    goto :goto_c2

    .line 634
    :cond_78
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh attempting to access memory outside of the index buffer (count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 635
    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_b1
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v1, :cond_bd

    if-lez v0, :cond_bd

    .line 645
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArraysInstanced(IIII)V

    goto :goto_c2

    .line 647
    :cond_bd
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 652
    .end local v0  # "numInstances":I
    :goto_c2
    if-eqz p5, :cond_c7

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 653
    :cond_c7
    return-void
.end method

.method public scale(FFF)V
    .registers 14
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F
    .param p3, "scaleZ"  # F

    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 995
    .local v0, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    .line 996
    .local v1, "offset":I
    iget v2, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 997
    .local v2, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v3

    .line 998
    .local v3, "numVertices":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 1000
    .local v4, "vertexSize":I
    mul-int v5, v3, v4

    new-array v5, v5, [F

    .line 1001
    .local v5, "vertices":[F
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 1003
    move v6, v1

    .line 1004
    .local v6, "idx":I
    packed-switch v2, :pswitch_data_60

    goto :goto_5c

    .line 1019
    :pswitch_21  #0x3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_22
    if-ge v7, v3, :cond_5c

    .line 1020
    aget v8, v5, v6

    mul-float/2addr v8, p1

    aput v8, v5, v6

    .line 1021
    add-int/lit8 v8, v6, 0x1

    aget v9, v5, v8

    mul-float/2addr v9, p2

    aput v9, v5, v8

    .line 1022
    add-int/lit8 v8, v6, 0x2

    aget v9, v5, v8

    mul-float/2addr v9, p3

    aput v9, v5, v8

    .line 1023
    add-int/2addr v6, v4

    .line 1019
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 1012
    .end local v7  # "i":I
    :pswitch_3b  #0x2
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_3c
    if-ge v7, v3, :cond_4e

    .line 1013
    aget v8, v5, v6

    mul-float/2addr v8, p1

    aput v8, v5, v6

    .line 1014
    add-int/lit8 v8, v6, 0x1

    aget v9, v5, v8

    mul-float/2addr v9, p2

    aput v9, v5, v8

    .line 1015
    add-int/2addr v6, v4

    .line 1012
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 1017
    .end local v7  # "i":I
    :cond_4e
    goto :goto_5c

    .line 1006
    :pswitch_4f  #0x1
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_50
    if-ge v7, v3, :cond_5b

    .line 1007
    aget v8, v5, v6

    mul-float/2addr v8, p1

    aput v8, v5, v6

    .line 1008
    add-int/2addr v6, v4

    .line 1006
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 1010
    .end local v7  # "i":I
    :cond_5b
    nop

    .line 1028
    :cond_5c
    :goto_5c
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1029
    return-void

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_3b  #00000002
        :pswitch_21  #00000003
    .end packed-switch
.end method

.method public setAutoBind(Z)V
    .registers 2
    .param p1, "autoBind"  # Z

    .line 495
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 496
    return-void
.end method

.method public setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "indices"  # [S

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 405
    return-object p0
.end method

.method public setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "indices"  # [S
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 417
    return-object p0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 4
    .param p1, "instanceData"  # Ljava/nio/FloatBuffer;

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData(Ljava/nio/FloatBuffer;I)V

    .line 270
    return-object p0

    .line 267
    :cond_e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;I)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "instanceData"  # Ljava/nio/FloatBuffer;
    .param p2, "count"  # I

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData(Ljava/nio/FloatBuffer;I)V

    .line 256
    return-object p0

    .line 254
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData([F)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "instanceData"  # [F

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_c

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData([FII)V

    .line 242
    return-object p0

    .line 240
    :cond_c
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData([FII)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "instanceData"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData([FII)V

    .line 229
    return-object p0

    .line 227
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "vertices"  # [F

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 314
    return-object p0
.end method

.method public setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "vertices"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 331
    return-object p0
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;II)V

    .line 1037
    return-void
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;II)V
    .registers 18
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "start"  # I
    .param p3, "count"  # I

    .line 1041
    move-object v0, p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    .line 1042
    .local v8, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v9, v1, 0x4

    .line 1043
    .local v9, "posOffset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    div-int/lit8 v10, v1, 0x4

    .line 1044
    .local v10, "stride":I
    iget v11, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 1045
    .local v11, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v12

    .line 1047
    .local v12, "numVertices":I
    mul-int v1, p3, v10

    new-array v13, v1, [F

    .line 1048
    .local v13, "vertices":[F
    mul-int v1, p2, v10

    mul-int v2, p3, v10

    invoke-virtual {p0, v1, v2, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1050
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v13

    move v3, v10

    move v4, v9

    move v5, v11

    move/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 1052
    mul-int v1, p2, v10

    invoke-virtual {p0, v1, v13}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1053
    return-void
.end method

.method public transformUV(Lcom/badlogic/gdx/math/Matrix3;)V
    .registers 4
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V

    .line 1108
    return-void
.end method

.method protected transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V
    .registers 16
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;
    .param p2, "start"  # I
    .param p3, "count"  # I

    .line 1112
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 1113
    .local v0, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    .line 1114
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v2

    div-int/lit8 v8, v2, 0x4

    .line 1115
    .local v8, "vertexSize":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v9

    .line 1117
    .local v9, "numVertices":I
    mul-int v2, v9, v8

    new-array v10, v2, [F

    .line 1119
    .local v10, "vertices":[F
    array-length v2, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1120
    move-object v2, p1

    move-object v3, v10

    move v4, v8

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V

    .line 1121
    array-length v2, v10

    invoke-virtual {p0, v10, v11, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1123
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 523
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 4
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 533
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->unbind()V

    .line 534
    :cond_23
    return-void
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "targetOffset"  # I
    .param p2, "source"  # Ljava/nio/FloatBuffer;

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->updateInstanceData(ILjava/nio/FloatBuffer;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;II)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "targetOffset"  # I
    .param p2, "source"  # Ljava/nio/FloatBuffer;
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->updateInstanceData(ILjava/nio/FloatBuffer;II)V

    .line 304
    return-object p0
.end method

.method public updateInstanceData(I[F)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "targetOffset"  # I
    .param p2, "source"  # [F

    .line 277
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->updateInstanceData(I[FII)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateInstanceData(I[FII)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "targetOffset"  # I
    .param p2, "source"  # [F
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->updateInstanceData(I[FII)V

    .line 287
    return-object p0
.end method

.method public updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 5
    .param p1, "targetOffset"  # I
    .param p2, "source"  # [F

    .line 338
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "targetOffset"  # I
    .param p2, "source"  # [F
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->updateVertices(I[FII)V

    .line 348
    return-object p0
.end method
