.class public final Lcom/badlogic/gdx/utils/reflect/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2
    .param p1, "field"  # Ljava/lang/reflect/Field;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    .line 32
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "obj"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 161
    :catch_7
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 159
    .end local v0  # "e":Ljava/lang/IllegalAccessException;
    :catch_25
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object is not an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Annotation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/badlogic/gdx/utils/reflect/Annotation;"
        }
    .end annotation

    .line 143
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 144
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 145
    return-object v1

    .line 147
    :cond_a
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 148
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 149
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Annotation;

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v1

    .line 147
    .end local v4  # "annotation":Ljava/lang/annotation/Annotation;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 152
    :cond_23
    return-object v1
.end method

.method public getDeclaredAnnotations()[Lcom/badlogic/gdx/utils/reflect/Annotation;
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 132
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/utils/reflect/Annotation;

    .line 133
    .local v1, "result":[Lcom/badlogic/gdx/utils/reflect/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 134
    new-instance v3, Lcom/badlogic/gdx/utils/reflect/Annotation;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    aput-object v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 136
    .end local v2  # "i":I
    :cond_19
    return-object v1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getElementType(I)Ljava/lang/Class;
    .registers 8
    .param p1, "index"  # I

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 106
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_4a

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 108
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_4a

    .line 109
    aget-object v2, v1, p1

    .line 110
    .local v2, "actualType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_20

    .line 111
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    return-object v3

    .line 112
    :cond_20
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2e

    .line 113
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    return-object v3

    .line 114
    :cond_2e
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_4a

    .line 115
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 116
    .local v3, "componentType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_4a

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .line 120
    .end local v1  # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v2  # "actualType":Ljava/lang/reflect/Type;
    .end local v3  # "componentType":Ljava/lang/reflect/Type;
    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isAccessible()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 125
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isDefaultAccess()Z
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isProtected()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isPublic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isFinal()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "obj"  # Ljava/lang/Object;
    .param p2, "value"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_7

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 170
    .end local v0  # "e":Ljava/lang/IllegalAccessException;
    :catch_25
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument not valid for field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAccessible(Z)V
    .registers 3
    .param p1, "accessible"  # Z

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    return-void
.end method
