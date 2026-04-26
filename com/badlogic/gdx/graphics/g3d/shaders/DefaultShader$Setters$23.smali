.class final Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$23;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 8
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"  # I
    .param p3, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 297
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    .line 298
    invoke-virtual {p4, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 297
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result v0

    .line 299
    .local v0, "unit":I
    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(II)Z

    .line 300
    return-void
.end method
