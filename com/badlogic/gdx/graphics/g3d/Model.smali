.class public Lcom/badlogic/gdx/graphics/g3d/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected final disposables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final meshParts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field public final meshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 163
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;)V
    .registers 3
    .param p1, "modelData"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .registers 4
    .param p1, "modelData"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 163
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 105
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 380
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 381
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Model;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .registers 5

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 368
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x1

    if-ge v1, v0, :cond_16

    .line 369
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 371
    .end local v1  # "i":I
    :cond_16
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_17
    if-ge v1, v0, :cond_27

    .line 372
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 374
    .end local v1  # "i":I
    :cond_27
    return-void
.end method

.method protected convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .registers 30
    .param p1, "mtl"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .param p2, "textureProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 276
    move-object/from16 v0, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 277
    .local v1, "result":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    .line 278
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_1b

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 279
    :cond_1b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_2b

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 280
    :cond_2b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_3b

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 281
    :cond_3b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_4b

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 282
    :cond_4b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_5b

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 283
    :cond_5b
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6e

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    invoke-direct {v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 284
    :cond_6e
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_84

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v5, 0x303

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    const/16 v7, 0x302

    invoke-direct {v2, v7, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 286
    :cond_84
    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 289
    .local v2, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_1c0

    .line 290
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    .line 292
    .local v6, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 293
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    .local v7, "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_c8

    .line 295
    .end local v7  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_b4
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;->load(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    .line 296
    .restart local v7  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 300
    :goto_c8
    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v10, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 301
    .local v10, "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 302
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 303
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 304
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 306
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_eb

    move v15, v3

    goto :goto_f0

    :cond_eb
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    move v15, v11

    .line 307
    .local v15, "offsetU":F
    :goto_f0
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_f7

    move/from16 v16, v3

    goto :goto_fd

    :cond_f7
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v16, v11

    .line 308
    .local v16, "offsetV":F
    :goto_fd
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_104

    move/from16 v17, v4

    goto :goto_10a

    :cond_104
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v17, v11

    .line 309
    .local v17, "scaleU":F
    :goto_10a
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_111

    move/from16 v18, v4

    goto :goto_117

    :cond_111
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v18, v11

    .line 311
    .local v18, "scaleV":F
    :goto_117
    iget v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    packed-switch v11, :pswitch_data_1c6

    :pswitch_11c  #0x6, 0x9
    goto/16 :goto_1b8

    .line 331
    :pswitch_11e  #0xa
    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    move-object v11, v14

    move-object v3, v14

    move-object v14, v10

    invoke-direct/range {v11 .. v18}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_1b8

    .line 319
    :pswitch_12d  #0x8
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 320
    goto/16 :goto_1b8

    .line 322
    :pswitch_145  #0x7
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 323
    goto :goto_1b8

    .line 316
    :pswitch_15c  #0x5
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 317
    goto :goto_1b8

    .line 325
    :pswitch_173  #0x4
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 326
    goto :goto_1b8

    .line 328
    :pswitch_18a  #0x3
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 329
    goto :goto_1b8

    .line 313
    :pswitch_1a1  #0x2
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 314
    nop

    .line 334
    .end local v6  # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v7  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v10  # "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .end local v15  # "offsetU":F
    .end local v16  # "offsetV":F
    .end local v17  # "scaleU":F
    .end local v18  # "scaleV":F
    :goto_1b8
    const/4 v3, 0x0

    goto/16 :goto_93

    .line 290
    :cond_1bb
    move-object/from16 v9, p0

    move-object/from16 v8, p2

    goto :goto_1c4

    .line 289
    :cond_1c0
    move-object/from16 v9, p0

    move-object/from16 v8, p2

    .line 337
    :goto_1c4
    return-object v1

    nop

    :pswitch_data_1c6
    .packed-switch 0x2
        :pswitch_1a1  #00000002
        :pswitch_18a  #00000003
        :pswitch_173  #00000004
        :pswitch_15c  #00000005
        :pswitch_11c  #00000006
        :pswitch_145  #00000007
        :pswitch_12d  #00000008
        :pswitch_11c  #00000009
        :pswitch_11e  #0000000a
    .end packed-switch
.end method

.method protected convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V
    .registers 16
    .param p1, "modelMesh"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "numIndices":I
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_11

    aget-object v5, v1, v4

    .line 238
    .local v5, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v6, v6

    add-int/2addr v0, v6

    .line 237
    .end local v5  # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 240
    :cond_11
    const/4 v1, 0x1

    if-lez v0, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    move v2, v3

    .line 241
    .local v2, "hasIndices":Z
    :goto_17
    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 242
    .local v4, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v5, v5

    iget v6, v4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v6, v6, 0x4

    div-int/2addr v5, v6

    .line 244
    .local v5, "numVertices":I
    new-instance v6, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-direct {v6, v1, v5, v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    move-object v1, v6

    .line 245
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 246
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 248
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iget-object v8, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v8, v8

    invoke-static {v6, v7, v8, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, "offset":I
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 251
    iget-object v7, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    array-length v8, v7

    move v9, v3

    :goto_4e
    if-ge v9, v8, :cond_82

    aget-object v10, v7, v9

    .line 252
    .local v10, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 253
    .local v11, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    iput-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 254
    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 255
    iput v6, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 256
    if-eqz v2, :cond_67

    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v12, v12

    goto :goto_68

    :cond_67
    move v12, v5

    :goto_68
    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 257
    iput-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 258
    if-eqz v2, :cond_77

    .line 259
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 261
    :cond_77
    iget v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    add-int/2addr v6, v12

    .line 262
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 251
    .end local v10  # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v11  # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    .line 264
    :cond_82
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 266
    .local v7, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->update()V

    .end local v7  # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    goto :goto_8f

    .line 267
    :cond_9f
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    .line 355
    .local v1, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 356
    .end local v1  # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    goto :goto_6

    .line 357
    :cond_16
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 5
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 390
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 391
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 392
    .end local v1  # "i":I
    :cond_15
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .registers 7
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "ignoreCase"  # Z

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 407
    .local v0, "n":I
    if-eqz p2, :cond_1f

    .line 408
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 409
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v3

    .line 408
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1e
    goto :goto_37

    .line 411
    :cond_1f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    if-ge v1, v0, :cond_37

    .line 412
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .restart local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v3

    .line 411
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 414
    .end local v1  # "i":I
    .end local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public getManagedDisposables()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .registers 7
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "ignoreCase"  # Z

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 429
    .local v0, "n":I
    if-eqz p2, :cond_1f

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 431
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .local v3, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v3

    .line 430
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1e
    goto :goto_37

    .line 433
    :cond_1f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    if-ge v1, v0, :cond_37

    .line 434
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .restart local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v3

    .line 433
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 436
    .end local v1  # "i":I
    .end local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z
    .param p3, "ignoreCase"  # Z

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method protected load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .registers 4
    .param p1, "modelData"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMeshes(Ljava/lang/Iterable;)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 110
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNodes(Ljava/lang/Iterable;)V

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadAnimations(Ljava/lang/Iterable;)V

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Model;->calculateTransforms()V

    .line 113
    return-void
.end method

.method protected loadAnimations(Ljava/lang/Iterable;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "modelAnimations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    .line 117
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 118
    .local v2, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 119
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    .line 120
    .local v4, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    .line 121
    .local v5, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-nez v5, :cond_34

    goto :goto_1f

    .line 122
    :cond_34
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 123
    .local v6, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v5, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 125
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_8a

    .line 126
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 127
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 128
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :goto_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 129
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6d

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 130
    :cond_6d
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_7c

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_80

    :cond_7c
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    :goto_80
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 132
    .end local v8  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_55

    .line 135
    :cond_8a
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_d9

    .line 136
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 137
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 138
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :goto_a4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 139
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_bc

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 140
    :cond_bc
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Quaternion;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_cb

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_cf

    :cond_cb
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Quaternion;

    :goto_cf
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 142
    .end local v8  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    goto :goto_a4

    .line 145
    :cond_d9
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_128

    .line 146
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 147
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 148
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :goto_f3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_128

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 149
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_10b

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 150
    :cond_10b
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_11a

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_11e

    :cond_11a
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    :goto_11e
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 152
    .end local v8  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_f3

    .line 155
    :cond_128
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_132

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v7, :cond_146

    :cond_132
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_13c

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v7, :cond_146

    :cond_13c
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_14b

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v7, :cond_14b

    .line 157
    :cond_146
    iget-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 158
    .end local v4  # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    .end local v5  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v6  # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_14b
    goto/16 :goto_1f

    .line 159
    :cond_14d
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_158

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 160
    .end local v1  # "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v2  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_158
    goto/16 :goto_4

    .line 161
    :cond_15a
    return-void
.end method

.method protected loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .registers 7
    .param p2, "textureProvider"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;",
            ")V"
        }
    .end annotation

    .line 270
    .local p1, "modelMaterials":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 271
    .local v1, "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 272
    .end local v1  # "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    goto :goto_4

    .line 273
    :cond_1a
    return-void
.end method

.method protected loadMeshes(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "meshes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .line 231
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V

    .line 232
    .end local v1  # "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    goto :goto_4

    .line 233
    :cond_14
    return-void
.end method

.method protected loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 14
    .param p1, "modelNode"  # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 180
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 181
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 183
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 184
    :cond_14
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 185
    :cond_1f
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 187
    :cond_2a
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    const/4 v2, 0x0

    if-eqz v1, :cond_ba

    .line 188
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    array-length v3, v1

    move v4, v2

    :goto_33
    if-ge v4, v3, :cond_ba

    aget-object v5, v1, v4

    .line 189
    .local v5, "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    const/4 v6, 0x0

    .line 190
    .local v6, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    const/4 v7, 0x0

    .line 192
    .local v7, "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    if-eqz v8, :cond_5c

    .line 193
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 194
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 195
    move-object v6, v9

    .line 196
    goto :goto_5c

    .line 198
    .end local v9  # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_5b
    goto :goto_43

    .line 201
    :cond_5c
    :goto_5c
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    if-eqz v8, :cond_7f

    .line 202
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v8

    :goto_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 203
    .local v9, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 204
    move-object v7, v9

    .line 205
    goto :goto_7f

    .line 207
    .end local v9  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_7e
    goto :goto_66

    .line 210
    :cond_7f
    :goto_7f
    if-eqz v6, :cond_9f

    if-eqz v7, :cond_9f

    .line 212
    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    .line 213
    .local v8, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iput-object v6, v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 214
    iput-object v7, v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 215
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 216
    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v9, :cond_9c

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v9, v8, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v5  # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v6  # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v7  # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    .end local v8  # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 210
    .restart local v5  # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .restart local v6  # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .restart local v7  # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_9f
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v5  # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v6  # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v7  # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_ba
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    if-eqz v1, :cond_cf

    .line 221
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    array-length v3, v1

    :goto_c1
    if-ge v2, v3, :cond_cf

    aget-object v4, v1, v2

    .line 222
    .local v4, "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 221
    .end local v4  # "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 226
    :cond_cf
    return-object v0
.end method

.method protected loadNodes(Ljava/lang/Iterable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "modelNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 168
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 169
    .end local v1  # "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    goto :goto_9

    .line 170
    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 171
    .local v1, "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v2, :cond_4c

    .line 172
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    new-instance v3, Lcom/badlogic/gdx/utils/ArrayMap;

    const-class v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 173
    :cond_4c
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 174
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 175
    .local v3, "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    iget-object v4, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v7, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_61

    .line 176
    .end local v1  # "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    .end local v3  # "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    :cond_8c
    goto :goto_29

    .line 177
    :cond_8d
    return-void
.end method

.method public manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V
    .registers 4
    .param p1, "disposable"  # Lcom/badlogic/gdx/utils/Disposable;

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 345
    :cond_e
    return-void
.end method
