.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bones"
.end annotation


# static fields
.field private static final idtMatrix:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public final bones:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 199
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "numBones"  # I

    .line 202
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    .line 203
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    .line 204
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 11
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"  # I
    .param p3, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_33

    .line 209
    div-int/lit8 v1, v0, 0x10

    .line 210
    .local v1, "idx":I
    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/16 v4, 0x10

    if-eqz v3, :cond_27

    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v3, v3

    if-ge v1, v3, :cond_27

    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v3, v3, v1

    if-nez v3, :cond_1b

    goto :goto_27

    .line 213
    :cond_1b
    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    invoke-static {v3, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 211
    :cond_27
    :goto_27
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v3, v3, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    invoke-static {v3, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    .end local v1  # "idx":I
    :goto_30
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 215
    .end local v0  # "i":I
    :cond_33
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v4, v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    .line 216
    return-void
.end method
