.class public Lcom/badlogic/gdx/graphics/g3d/Environment;
.super Lcom/badlogic/gdx/graphics/g3d/Attributes;
.source "Environment.java"


# instance fields
.field public shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 51
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_b

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_20

    .line 53
    :cond_b
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_16

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_20

    .line 55
    :cond_16
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_21

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 59
    :goto_20
    return-object p0

    .line 58
    :cond_21
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unknown light type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 63
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    .line 64
    .local v0, "dirLights":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    if-nez v0, :cond_13

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 65
    :cond_13
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 66
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 70
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    .line 71
    .local v0, "pointLights":Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;
    if-nez v0, :cond_13

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 72
    :cond_13
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 77
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    .line 78
    .local v0, "spotLights":Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;
    if-nez v0, :cond_13

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 79
    :cond_13
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 80
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    .line 45
    .local p1, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 46
    .local v1, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_4

    .line 47
    .end local v1  # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_14
    return-object p0
.end method

.method public varargs add([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 5
    .param p1, "lights"  # [Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 40
    .local v2, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 39
    .end local v2  # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_c
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 96
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_b

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_20

    .line 98
    :cond_b
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_16

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_20

    .line 100
    :cond_16
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_21

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 104
    :goto_20
    return-object p0

    .line 103
    :cond_21
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unknown light type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 5
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 108
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->has(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 109
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    .line 110
    .local v0, "dirLights":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 111
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_21

    .line 112
    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(J)V

    .line 114
    .end local v0  # "dirLights":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    :cond_21
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 5
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 118
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->has(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 119
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    .line 120
    .local v0, "pointLights":Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 121
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_21

    .line 122
    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(J)V

    .line 124
    .end local v0  # "pointLights":Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;
    :cond_21
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 5
    .param p1, "light"  # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 128
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->has(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 129
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    .line 130
    .local v0, "spotLights":Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 131
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_21

    .line 132
    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(J)V

    .line 134
    .end local v0  # "spotLights":Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;
    :cond_21
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    .line 90
    .local p1, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 91
    .local v1, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_4

    .line 92
    .end local v1  # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_14
    return-object p0
.end method

.method public varargs remove([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .registers 5
    .param p1, "lights"  # [Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 85
    .local v2, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 84
    .end local v2  # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_c
    return-object p0
.end method
