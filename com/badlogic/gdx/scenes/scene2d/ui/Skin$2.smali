.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;
.super Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 501
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method

.method private readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 11
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "type"  # Ljava/lang/Class;
    .param p3, "valueMap"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 516
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    if-ne p2, v0, :cond_7

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_8

    :cond_7
    move-object v0, p2

    .line 517
    .local v0, "addType":Ljava/lang/Class;
    :goto_8
    iget-object v1, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v1, "valueEntry":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_a
    if-eqz v1, :cond_5d

    .line 518
    invoke-virtual {p1, p2, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    .line 519
    .local v2, "object":Ljava/lang/Object;
    if-nez v2, :cond_13

    goto :goto_30

    .line 521
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 522
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eq v0, v3, :cond_2f

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 523
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v3, v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_33

    .line 527
    :cond_2f
    nop

    .line 517
    .end local v2  # "object":Ljava/lang/Object;
    :goto_30
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_a

    .line 524
    .restart local v2  # "object":Ljava/lang/Object;
    :catch_33
    move-exception v3

    .line 525
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 526
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 529
    .end local v1  # "valueEntry":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v2  # "object":Ljava/lang/Object;
    .end local v3  # "ex":Ljava/lang/Exception;
    :cond_5d
    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .registers 7
    .param p1, "json"  # Lcom/badlogic/gdx/utils/Json;
    .param p2, "typeToValueMap"  # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "ignored"  # Ljava/lang/Class;

    .line 503
    iget-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "valueMap":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_25

    .line 505
    :try_start_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Json;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 506
    .local v1, "type":Ljava/lang/Class;
    if-nez v1, :cond_17

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 507
    :cond_17
    invoke-direct {p0, p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    :try_end_1a
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_4 .. :try_end_1a} :catch_1e

    .line 510
    .end local v1  # "type":Ljava/lang/Class;
    nop

    .line 503
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 508
    :catch_1e
    move-exception v1

    .line 509
    .local v1, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 512
    .end local v0  # "valueMap":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v1  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object p1

    return-object p1
.end method
