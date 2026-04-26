.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;
.super Lcom/badlogic/gdx/utils/Json;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final parentFieldName:Ljava/lang/String; = "parent"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 462
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    return-void
.end method


# virtual methods
.method protected ignoreUnknownField(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"  # Ljava/lang/Class;
    .param p2, "fieldName"  # Ljava/lang/String;

    .line 473
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 9
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 477
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 478
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    .local v0, "parentName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 482
    .local v1, "parentType":Ljava/lang/Class;
    :goto_14
    :try_start_14
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;->copyFields(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 483
    goto :goto_4a

    .line 484
    :catch_1e
    move-exception v2

    .line 485
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 486
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_28

    .line 492
    .end local v2  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    goto :goto_14

    .line 487
    .restart local v2  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_28
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find parent resource with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    .line 489
    .local v3, "se":Lcom/badlogic/gdx/utils/SerializationException;
    iget-object v4, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 490
    throw v3

    .line 495
    .end local v0  # "parentName":Ljava/lang/String;
    .end local v1  # "parentType":Ljava/lang/Class;
    .end local v2  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3  # "se":Lcom/badlogic/gdx/utils/SerializationException;
    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Json;->readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 496
    return-void
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 6
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 467
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-class v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 469
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
