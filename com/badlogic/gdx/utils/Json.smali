.class public Lcom/badlogic/gdx/utils/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Json$Serializable;,
        Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;,
        Lcom/badlogic/gdx/utils/Json$Serializer;,
        Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    }
.end annotation


# static fields
.field private static final debug:Z


# instance fields
.field private final classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Json$Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private final classToTag:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

.field private enumNames:Z

.field private final equals1:[Ljava/lang/Object;

.field private final equals2:[Ljava/lang/Object;

.field private ignoreDeprecated:Z

.field private ignoreUnknownFields:Z

.field private outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private quoteLongValues:Z

.field private readDeprecated:Z

.field private sortFields:Z

.field private final tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;

.field private final typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private usePrototypes:Z

.field private writer:Lcom/badlogic/gdx/utils/JsonWriter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 57
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .registers 4
    .param p1, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 57
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 73
    return-void
.end method

.method private convertToString(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3
    .param p1, "e"  # Ljava/lang/Enum;

    .line 1191
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method private convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "object"  # Ljava/lang/Object;

    .line 1195
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1196
    :cond_c
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 19
    .param p1, "type"  # Ljava/lang/Class;

    .line 336
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ")"

    const-string v4, " ("

    iget-boolean v0, v1, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    const/4 v5, 0x0

    if-nez v0, :cond_e

    return-object v5

    .line 337
    :cond_e
    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 340
    :cond_1f
    :try_start_1f
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_d7

    move-object v5, v0

    .line 344
    .local v5, "object":Ljava/lang/Object;
    nop

    .line 346
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v6

    .line 347
    .local v6, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    iget v0, v6, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    new-array v7, v0, [Ljava/lang/Object;

    .line 348
    .local v7, "values":[Ljava/lang/Object;
    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "defaultIndex":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/OrderedMap;->orderedKeys()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    .line 352
    .local v8, "fieldNames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    iget v10, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v10, "n":I
    :goto_3a
    if-ge v9, v10, :cond_d6

    .line 353
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 354
    .local v11, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    iget-boolean v12, v1, Lcom/badlogic/gdx/utils/Json;->ignoreDeprecated:Z

    if-eqz v12, :cond_4f

    iget-boolean v12, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->deprecated:Z

    if-eqz v12, :cond_4f

    goto :goto_5a

    .line 355
    :cond_4f
    iget-object v12, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 357
    .local v12, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    add-int/lit8 v13, v0, 0x1

    .end local v0  # "defaultIndex":I
    .local v13, "defaultIndex":I
    :try_start_53
    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v7, v0
    :try_end_59
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_53 .. :try_end_59} :catch_a6
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_53 .. :try_end_59} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_59} :catch_5d

    .line 367
    move v0, v13

    .line 352
    .end local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v13  # "defaultIndex":I
    .restart local v0  # "defaultIndex":I
    :goto_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 363
    .end local v0  # "defaultIndex":I
    .restart local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .restart local v13  # "defaultIndex":I
    :catch_5d
    move-exception v0

    .line 364
    .local v0, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v14, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v14, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 365
    .local v14, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 366
    throw v14

    .line 360
    .end local v0  # "runtimeEx":Ljava/lang/RuntimeException;
    .end local v14  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_84
    move-exception v0

    .line 361
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 362
    throw v0

    .line 358
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_a6
    move-exception v0

    .line 359
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v14, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5  # "object":Ljava/lang/Object;
    .local v16, "object":Ljava/lang/Object;
    const-string v5, "Error accessing field: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 369
    .end local v9  # "i":I
    .end local v10  # "n":I
    .end local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v13  # "defaultIndex":I
    .end local v16  # "object":Ljava/lang/Object;
    .local v0, "defaultIndex":I
    .restart local v5  # "object":Ljava/lang/Object;
    :cond_d6
    return-object v7

    .line 341
    .end local v0  # "defaultIndex":I
    .end local v5  # "object":Ljava/lang/Object;
    .end local v6  # "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .end local v7  # "values":[Ljava/lang/Object;
    .end local v8  # "fieldNames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_d7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 342
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object v5
.end method

.method private getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;
    .registers 13
    .param p1, "type"  # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    .line 184
    .local v0, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    if-eqz v0, :cond_b

    return-object v0

    .line 186
    :cond_b
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 187
    .local v1, "classHierarchy":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Class;>;"
    move-object v2, p1

    .line 188
    .local v2, "nextClass":Ljava/lang/Class;
    :goto_11
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1d

    .line 189
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    .line 192
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "allFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/reflect/Field;>;"
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_26
    if-ltz v4, :cond_38

    .line 194
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredFields(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Field;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 196
    .end local v4  # "i":I
    :cond_38
    new-instance v4, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>(I)V

    .line 197
    .local v4, "nameToField":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_46
    if-ge v6, v7, :cond_7e

    .line 198
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/reflect/Field;

    .line 200
    .local v8, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/reflect/Field;->isTransient()Z

    move-result v9

    if-eqz v9, :cond_55

    goto :goto_7b

    .line 201
    :cond_55
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/reflect/Field;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_5c

    goto :goto_7b

    .line 202
    :cond_5c
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/reflect/Field;->isSynthetic()Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_7b

    .line 204
    :cond_63
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/reflect/Field;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_6f

    .line 206
    :try_start_69
    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/reflect/Field;->setAccessible(Z)V
    :try_end_6c
    .catch Ljava/security/AccessControlException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 209
    goto :goto_6f

    .line 207
    :catch_6d
    move-exception v9

    .line 208
    .local v9, "ex":Ljava/security/AccessControlException;
    goto :goto_7b

    .line 212
    .end local v9  # "ex":Ljava/security/AccessControlException;
    :cond_6f
    :goto_6f
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    invoke-direct {v10, v8}, Lcom/badlogic/gdx/utils/Json$FieldMetadata;-><init>(Lcom/badlogic/gdx/utils/reflect/Field;)V

    invoke-virtual {v4, v9, v10}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v8  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :goto_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 214
    .end local v6  # "i":I
    .end local v7  # "n":I
    :cond_7e
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/Json;->sortFields:Z

    if-eqz v5, :cond_87

    iget-object v5, v4, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->sort()V

    .line 215
    :cond_87
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-object v4
.end method


# virtual methods
.method public addClassTag(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/Class;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public copyFields(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .param p1, "from"  # Ljava/lang/Object;
    .param p2, "to"  # Ljava/lang/Object;

    .line 1177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    .line 1178
    .local v0, "toFields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 1179
    .local v2, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 1180
    .local v3, "toField":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    iget-object v4, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 1181
    .local v4, "fromField":Lcom/badlogic/gdx/utils/reflect/Field;
    if-eqz v3, :cond_59

    .line 1183
    :try_start_30
    iget-object v5, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_39
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_30 .. :try_end_39} :catch_3b

    .line 1186
    nop

    .line 1187
    .end local v2  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .end local v3  # "toField":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v4  # "fromField":Lcom/badlogic/gdx/utils/reflect/Field;
    goto :goto_14

    .line 1184
    .restart local v2  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .restart local v3  # "toField":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v4  # "fromField":Lcom/badlogic/gdx/utils/reflect/Field;
    :catch_3b
    move-exception v1

    .line 1185
    .local v1, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error copying field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1181
    .end local v1  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_59
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To object is missing field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1188
    .end local v2  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .end local v3  # "toField":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v4  # "fromField":Lcom/badlogic/gdx/utils/reflect/Field;
    :cond_76
    return-void
.end method

.method public fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .registers 7
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    .line 795
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 796
    :catch_f
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 5
    .param p2, "input"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 781
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .registers 5
    .param p2, "reader"  # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .line 768
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .registers 8
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    .line 806
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 807
    :catch_e
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 5
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "input"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 788
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .registers 5
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "reader"  # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .line 775
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "json"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 834
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;[CII)Ljava/lang/Object;
    .registers 7
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p3, "data"  # [C
    .param p4, "offset"  # I
    .param p5, "length"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "[CII)TT;"
        }
    .end annotation

    .line 822
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p2, "json"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 828
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;[CII)Ljava/lang/Object;
    .registers 7
    .param p2, "data"  # [C
    .param p3, "offset"  # I
    .param p4, "length"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[CII)TT;"
        }
    .end annotation

    .line 815
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "tag"  # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getIgnoreUnknownFields()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownFields:Z

    return v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Json$Serializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Json$Serializer<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$Serializer;

    return-object v0
.end method

.method public getTag(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p1, "type"  # Ljava/lang/Class;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Lcom/badlogic/gdx/utils/JsonWriter;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    return-object v0
.end method

.method protected ignoreUnknownField(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"  # Ljava/lang/Class;
    .param p2, "fieldName"  # Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method protected newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "type"  # Ljava/lang/Class;

    .line 1202
    :try_start_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1203
    :catch_5
    move-exception v0

    .line 1206
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_7
    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;

    move-result-object v2

    .line 1207
    .local v2, "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->setAccessible(Z)V

    .line 1208
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_17} :catch_9f
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_7 .. :try_end_17} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v1

    .line 1221
    .end local v2  # "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    :catch_18
    move-exception v1

    .line 1222
    .local v1, "privateConstructorException":Ljava/lang/Exception;
    move-object v0, v1

    goto/16 :goto_a1

    .line 1210
    .end local v1  # "privateConstructorException":Ljava/lang/Exception;
    :catch_1c
    move-exception v2

    .line 1211
    .local v2, "ignored":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    const-class v3, Ljava/lang/Enum;

    invoke-static {v3, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1212
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 1213
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v1

    return-object v1

    .line 1215
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_82

    .line 1217
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isMemberClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isStaticClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1218
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class cannot be created (non-static member class): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1220
    :cond_65
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1216
    :cond_82
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered JSON object when expected array of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1209
    .end local v2  # "ignored":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_9f
    move-exception v1

    .line 1223
    nop

    .line 1224
    :goto_a1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public prettyPrint(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "object"  # Ljava/lang/Object;

    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "singleLineColumns"  # I

    .line 1237
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .registers 4
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "settings"  # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1245
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "json"  # Ljava/lang/String;

    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "json"  # Ljava/lang/String;
    .param p2, "singleLineColumns"  # I

    .line 1241
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .registers 4
    .param p1, "json"  # Ljava/lang/String;
    .param p2, "settings"  # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1249
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 13
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "field"  # Lcom/badlogic/gdx/utils/reflect/Field;
    .param p3, "jsonName"  # Ljava/lang/String;
    .param p4, "elementType"  # Ljava/lang/Class;
    .param p5, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 862
    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 863
    .local v2, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v2, :cond_b

    return-void

    .line 865
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, p4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_b .. :try_end_16} :catch_78
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_b .. :try_end_16} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_16} :catch_18

    .line 877
    nop

    .line 878
    return-void

    .line 872
    :catch_18
    move-exception v3

    .line 873
    .local v3, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 874
    .local v4, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 876
    throw v4

    .line 869
    .end local v3  # "runtimeEx":Ljava/lang/RuntimeException;
    .end local v4  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_4e
    move-exception v3

    .line 870
    .local v3, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 871
    throw v3

    .line 866
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_78
    move-exception v3

    .line 867
    .local v3, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 868
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 10
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 838
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 839
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 11
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "elementType"  # Ljava/lang/Class;
    .param p4, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 842
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 843
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 11
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "jsonName"  # Ljava/lang/String;
    .param p4, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 846
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 847
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 15
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "jsonName"  # Ljava/lang/String;
    .param p4, "elementType"  # Ljava/lang/Class;
    .param p5, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 852
    .local v0, "type":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 853
    .local v1, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-eqz v1, :cond_20

    .line 854
    iget-object v8, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 855
    .local v8, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    if-nez p4, :cond_16

    iget-object p4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 856
    :cond_16
    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 857
    return-void

    .line 853
    .end local v8  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :cond_20
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 14
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 882
    .local v0, "type":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    .line 883
    .local v1, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    iget-object v2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_a
    if-eqz v2, :cond_116

    .line 884
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 885
    .local v3, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    const-string v4, ")"

    const-string v5, " ("

    if-nez v3, :cond_6f

    .line 886
    iget-object v6, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    goto :goto_8c

    .line 887
    :cond_2f
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownFields:Z

    if-nez v6, :cond_8c

    iget-object v6, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 889
    goto :goto_8c

    .line 891
    :cond_3c
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 892
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 893
    .local v4, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 894
    throw v4

    .line 897
    .end local v4  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :cond_6f
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/Json;->ignoreDeprecated:Z

    if-eqz v6, :cond_7c

    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/Json;->readDeprecated:Z

    if-nez v6, :cond_7c

    iget-boolean v6, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->deprecated:Z

    if-eqz v6, :cond_7c

    goto :goto_8c

    .line 899
    :cond_7c
    iget-object v6, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 901
    .local v6, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :try_start_7e
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    invoke-virtual {p0, v7, v8, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8b
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_7e .. :try_end_8b} :catch_e8
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_7e .. :try_end_8b} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_8b} :catch_90

    .line 912
    nop

    .line 883
    .end local v3  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v6  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :cond_8c
    :goto_8c
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_a

    .line 907
    .restart local v3  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v6  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :catch_90
    move-exception v7

    .line 908
    .local v7, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v8, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v8, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 909
    .local v8, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 910
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 911
    throw v8

    .line 904
    .end local v7  # "runtimeEx":Ljava/lang/RuntimeException;
    .end local v8  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_c2
    move-exception v7

    .line 905
    .local v7, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 906
    throw v7

    .line 902
    .end local v7  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_e8
    move-exception v7

    .line 903
    .local v7, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v8, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error accessing field: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 914
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v3  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v6  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v7  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_116
    return-void
.end method

.method public readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 4
    .param p2, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 966
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 13
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

    .line 973
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 975
    :cond_4
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_1d0

    .line 976
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object v1, v0

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "className":Ljava/lang/String;
    :goto_1a
    if-eqz v1, :cond_2f

    .line 978
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Json;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 979
    if-nez p1, :cond_2f

    .line 981
    :try_start_22
    invoke-static {v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_26
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_22 .. :try_end_26} :catch_28

    move-object p1, v4

    .line 984
    goto :goto_2f

    .line 982
    :catch_28
    move-exception v0

    .line 983
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 988
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_2f
    :goto_2f
    if-nez p1, :cond_3d

    .line 989
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    invoke-interface {v0, p0, p3, p1}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 990
    :cond_3c
    return-object p3

    .line 993
    :cond_3d
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v4, :cond_7c

    const-class v4, Ljava/util/Collection;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 995
    const-string v4, "items"

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    .line 996
    if-eqz p3, :cond_53

    goto/16 :goto_1d0

    :cond_53
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert object to collection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 997
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_7c
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 1000
    .local v2, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v2, :cond_8b

    invoke-interface {v2, p0, p3, p1}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1002
    :cond_8b
    const-class v3, Ljava/lang/String;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Integer;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Boolean;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Float;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Long;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Double;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Short;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Byte;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Character;

    if-eq p1, v3, :cond_1c9

    const-class v3, Ljava/lang/Enum;

    .line 1004
    invoke-static {v3, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b9

    goto/16 :goto_1c9

    .line 1008
    :cond_b9
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 1010
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v4, :cond_c8

    .line 1011
    move-object v0, v3

    check-cast v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v0, p0, p3}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 1012
    return-object v3

    .line 1016
    :cond_c8
    instance-of v4, v3, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v4, :cond_e0

    .line 1017
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 1018
    .local v4, "result":Lcom/badlogic/gdx/utils/ObjectMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v5, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d1
    if-eqz v5, :cond_df

    .line 1019
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_d1

    .line 1020
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_df
    return-object v4

    .line 1022
    .end local v4  # "result":Lcom/badlogic/gdx/utils/ObjectMap;
    :cond_e0
    instance-of v4, v3, Lcom/badlogic/gdx/utils/ObjectIntMap;

    if-eqz v4, :cond_100

    .line 1023
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 1024
    .local v4, "result":Lcom/badlogic/gdx/utils/ObjectIntMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_e9
    if-eqz v5, :cond_ff

    .line 1025
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 1024
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_e9

    .line 1026
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_ff
    return-object v4

    .line 1028
    .end local v4  # "result":Lcom/badlogic/gdx/utils/ObjectIntMap;
    :cond_100
    instance-of v4, v3, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    if-eqz v4, :cond_120

    .line 1029
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    .line 1030
    .local v4, "result":Lcom/badlogic/gdx/utils/ObjectFloatMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_109
    if-eqz v5, :cond_11f

    .line 1031
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-class v7, Ljava/lang/Float;

    invoke-virtual {p0, v7, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    .line 1030
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_109

    .line 1032
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_11f
    return-object v4

    .line 1034
    .end local v4  # "result":Lcom/badlogic/gdx/utils/ObjectFloatMap;
    :cond_120
    instance-of v4, v3, Lcom/badlogic/gdx/utils/ObjectSet;

    const-string v5, "values"

    if-eqz v4, :cond_13a

    .line 1035
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectSet;

    .line 1036
    .local v4, "result":Lcom/badlogic/gdx/utils/ObjectSet;
    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_12d
    if-eqz v5, :cond_139

    .line 1037
    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_12d

    .line 1038
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_139
    return-object v4

    .line 1040
    .end local v4  # "result":Lcom/badlogic/gdx/utils/ObjectSet;
    :cond_13a
    instance-of v4, v3, Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v4, :cond_156

    .line 1041
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/IntMap;

    .line 1042
    .local v4, "result":Lcom/badlogic/gdx/utils/IntMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_143
    if-eqz v5, :cond_155

    .line 1043
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_143

    .line 1044
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_155
    return-object v4

    .line 1046
    .end local v4  # "result":Lcom/badlogic/gdx/utils/IntMap;
    :cond_156
    instance-of v4, v3, Lcom/badlogic/gdx/utils/LongMap;

    if-eqz v4, :cond_172

    .line 1047
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/LongMap;

    .line 1048
    .local v4, "result":Lcom/badlogic/gdx/utils/LongMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_15f
    if-eqz v5, :cond_171

    .line 1049
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_15f

    .line 1050
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_171
    return-object v4

    .line 1052
    .end local v4  # "result":Lcom/badlogic/gdx/utils/LongMap;
    :cond_172
    instance-of v4, v3, Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v4, :cond_18a

    .line 1053
    move-object v0, v3

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    .line 1054
    .local v0, "result":Lcom/badlogic/gdx/utils/IntSet;
    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .local v4, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_17d
    if-eqz v4, :cond_189

    .line 1055
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 1054
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_17d

    .line 1056
    .end local v4  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_189
    return-object v0

    .line 1058
    .end local v0  # "result":Lcom/badlogic/gdx/utils/IntSet;
    :cond_18a
    instance-of v4, v3, Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v4, :cond_1a2

    .line 1059
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 1060
    .local v4, "result":Lcom/badlogic/gdx/utils/ArrayMap;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_193
    if-eqz v5, :cond_1a1

    .line 1061
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1060
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_193

    .line 1062
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1a1
    return-object v4

    .line 1064
    .end local v4  # "result":Lcom/badlogic/gdx/utils/ArrayMap;
    :cond_1a2
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1c5

    .line 1065
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 1066
    .local v4, "result":Ljava/util/Map;
    iget-object v5, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1ab
    if-eqz v5, :cond_1c4

    .line 1067
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    goto :goto_1c1

    .line 1068
    :cond_1b8
    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    :goto_1c1
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1ab

    .line 1070
    .end local v5  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1c4
    return-object v4

    .line 1073
    .end local v4  # "result":Ljava/util/Map;
    :cond_1c5
    invoke-virtual {p0, v3, p3}, Lcom/badlogic/gdx/utils/Json;->readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 1074
    return-object v3

    .line 1005
    .end local v3  # "object":Ljava/lang/Object;
    :cond_1c9
    :goto_1c9
    const-string v0, "value"

    invoke-virtual {p0, v0, p1, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1078
    .end local v1  # "className":Ljava/lang/String;
    .end local v2  # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    :cond_1d0
    :goto_1d0
    if-eqz p1, :cond_1f4

    .line 1079
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 1080
    .local v1, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v1, :cond_1e1

    invoke-interface {v1, p0, p3, p1}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_1e1
    const-class v4, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f4

    .line 1084
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1085
    .local v0, "object":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v2, p0, p3}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 1086
    return-object v0

    .line 1090
    .end local v0  # "object":Ljava/lang/Object;
    .end local v1  # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    :cond_1f4
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    const-string v4, "Unable to convert value to required type: "

    if-eqz v1, :cond_2c8

    .line 1092
    if-eqz p1, :cond_202

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_204

    :cond_202
    const-class p1, Lcom/badlogic/gdx/utils/Array;

    .line 1093
    :cond_204
    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22b

    .line 1094
    const-class v1, Lcom/badlogic/gdx/utils/Array;

    if-ne p1, v1, :cond_216

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    goto :goto_21c

    :cond_216
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 1095
    .local v1, "result":Lcom/badlogic/gdx/utils/Array;
    :goto_21c
    iget-object v2, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_21e
    if-eqz v2, :cond_22a

    .line 1096
    invoke-virtual {p0, p2, v0, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 1095
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_21e

    .line 1097
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_22a
    return-object v1

    .line 1099
    .end local v1  # "result":Lcom/badlogic/gdx/utils/Array;
    :cond_22b
    const-class v1, Lcom/badlogic/gdx/utils/Queue;

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_252

    .line 1100
    const-class v1, Lcom/badlogic/gdx/utils/Queue;

    if-ne p1, v1, :cond_23d

    new-instance v1, Lcom/badlogic/gdx/utils/Queue;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Queue;-><init>()V

    goto :goto_243

    :cond_23d
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Queue;

    .line 1101
    .local v1, "result":Lcom/badlogic/gdx/utils/Queue;
    :goto_243
    iget-object v2, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_245
    if-eqz v2, :cond_251

    .line 1102
    invoke-virtual {p0, p2, v0, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Queue;->addLast(Ljava/lang/Object;)V

    .line 1101
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_245

    .line 1103
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_251
    return-object v1

    .line 1105
    .end local v1  # "result":Lcom/badlogic/gdx/utils/Queue;
    :cond_252
    const-class v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_27b

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_266

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_26c

    :cond_266
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1107
    .local v1, "result":Ljava/util/Collection;
    :goto_26c
    iget-object v2, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_26e
    if-eqz v2, :cond_27a

    .line 1108
    invoke-virtual {p0, p2, v0, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_26e

    .line 1109
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_27a
    return-object v1

    .line 1111
    .end local v1  # "result":Ljava/util/Collection;
    :cond_27b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2a1

    .line 1112
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1113
    .local v1, "componentType":Ljava/lang/Class;
    if-nez p2, :cond_288

    move-object p2, v1

    .line 1114
    :cond_288
    iget v2, p3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 1115
    .local v2, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1116
    .local v3, "i":I
    iget-object v4, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_291
    if-eqz v4, :cond_2a0

    .line 1117
    add-int/lit8 v5, v3, 0x1

    .end local v3  # "i":I
    .local v5, "i":I
    invoke-virtual {p0, p2, v0, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1116
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move v3, v5

    goto :goto_291

    .line 1118
    .end local v4  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5  # "i":I
    .restart local v3  # "i":I
    :cond_2a0
    return-object v2

    .line 1120
    .end local v1  # "componentType":Ljava/lang/Class;
    .end local v2  # "result":Ljava/lang/Object;
    .end local v3  # "i":I
    :cond_2a1
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_2c8
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_351

    .line 1125
    if-eqz p1, :cond_33d

    :try_start_2d0
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_33d

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_2d9

    goto :goto_33d

    .line 1126
    :cond_2d9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_334

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_2e2

    goto :goto_334

    .line 1127
    :cond_2e2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_32b

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_2eb

    goto :goto_32b

    .line 1128
    :cond_2eb
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_322

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_2f4

    goto :goto_322

    .line 1129
    :cond_2f4
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_2fd

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_2fd
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_319

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_306

    goto :goto_319

    .line 1131
    :cond_306
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_310

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_30f

    goto :goto_310

    .line 1133
    :cond_30f
    goto :goto_347

    .line 1131
    :cond_310
    :goto_310
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_319
    :goto_319
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_322
    :goto_322
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_32b
    :goto_32b
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1126
    :cond_334
    :goto_334
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_33d
    :goto_33d
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_345
    .catch Ljava/lang/NumberFormatException; {:try_start_2d0 .. :try_end_345} :catch_346

    return-object v0

    .line 1132
    :catch_346
    move-exception v1

    .line 1134
    :goto_347
    new-instance v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    move-object p3, v1

    .line 1137
    :cond_351
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_377

    .line 1139
    if-eqz p1, :cond_363

    :try_start_359
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_363

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_362

    goto :goto_363

    .line 1141
    :cond_362
    goto :goto_36d

    .line 1139
    :cond_363
    :goto_363
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_36b
    .catch Ljava/lang/NumberFormatException; {:try_start_359 .. :try_end_36b} :catch_36c

    return-object v0

    .line 1140
    :catch_36c
    move-exception v1

    .line 1142
    :goto_36d
    new-instance v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    move-object p3, v1

    .line 1145
    :cond_377
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_451

    .line 1146
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "string":Ljava/lang/String;
    if-eqz p1, :cond_450

    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_389

    goto/16 :goto_450

    .line 1149
    :cond_389
    :try_start_389
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3d9

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_392

    goto :goto_3d9

    .line 1150
    :cond_392
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3d4

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_39b

    goto :goto_3d4

    .line 1151
    :cond_39b
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3cf

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_3a4

    goto :goto_3cf

    .line 1152
    :cond_3a4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3ca

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_3ad

    goto :goto_3ca

    .line 1153
    :cond_3ad
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3c5

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_3b6

    goto :goto_3c5

    .line 1154
    :cond_3b6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3c0

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_3bf

    goto :goto_3c0

    .line 1156
    :cond_3bf
    goto :goto_3df

    .line 1154
    :cond_3c0
    :goto_3c0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 1153
    :cond_3c5
    :goto_3c5
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 1152
    :cond_3ca
    :goto_3ca
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1151
    :cond_3cf
    :goto_3cf
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1150
    :cond_3d4
    :goto_3d4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1149
    :cond_3d9
    :goto_3d9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_3dd
    .catch Ljava/lang/NumberFormatException; {:try_start_389 .. :try_end_3dd} :catch_3de

    return-object v1

    .line 1155
    :catch_3de
    move-exception v1

    .line 1157
    :goto_3df
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_44b

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_3e8

    goto :goto_44b

    .line 1158
    :cond_3e8
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_441

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_3f1

    goto :goto_441

    .line 1159
    :cond_3f1
    const-class v1, Ljava/lang/Enum;

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_415

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    check-cast v1, [Ljava/lang/Enum;

    .line 1161
    .local v1, "constants":[Ljava/lang/Enum;
    const/4 v5, 0x0

    .restart local v5  # "i":I
    array-length v6, v1

    .local v6, "n":I
    :goto_403
    if-ge v5, v6, :cond_415

    .line 1162
    aget-object v7, v1, v5

    .line 1163
    .local v7, "e":Ljava/lang/Enum;
    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_412

    return-object v7

    .line 1161
    .end local v7  # "e":Ljava/lang/Enum;
    :cond_412
    add-int/lit8 v5, v5, 0x1

    goto :goto_403

    .line 1166
    .end local v1  # "constants":[Ljava/lang/Enum;
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_415
    const-class v1, Ljava/lang/CharSequence;

    if-ne p1, v1, :cond_41a

    return-object v0

    .line 1167
    :cond_41a
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :cond_441
    :goto_441
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 1157
    :cond_44b
    :goto_44b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1147
    :cond_450
    :goto_450
    return-object v0

    .line 1170
    .end local v0  # "string":Ljava/lang/String;
    :cond_451
    return-object v0
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 6
    .param p2, "elementType"  # Ljava/lang/Class;
    .param p4, "jsonData"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 959
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_3

    return-object p3

    .line 960
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p3, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 929
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p3, "elementType"  # Ljava/lang/Class;
    .param p4, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 944
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p3, "elementType"  # Ljava/lang/Class;
    .param p5, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 951
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 952
    .local v0, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p4, "jsonMap"  # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .line 935
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 936
    .local v0, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_7

    return-object p3

    .line 937
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setDefaultSerializer(Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .registers 2
    .param p1, "defaultSerializer"  # Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 142
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 143
    return-void
.end method

.method public setDeprecated(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "type"  # Ljava/lang/Class;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "deprecated"  # Z

    .line 172
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 173
    .local v0, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-eqz v0, :cond_f

    .line 174
    iput-boolean p3, v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->deprecated:Z

    .line 175
    return-void

    .line 173
    :cond_f
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 8
    .param p1, "type"  # Ljava/lang/Class;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "elementType"  # Ljava/lang/Class;

    .line 163
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 164
    .local v0, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-eqz v0, :cond_f

    .line 165
    iput-object p3, v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 166
    return-void

    .line 164
    :cond_f
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEnumNames(Z)V
    .registers 2
    .param p1, "enumNames"  # Z

    .line 114
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 115
    return-void
.end method

.method public setIgnoreDeprecated(Z)V
    .registers 2
    .param p1, "ignoreDeprecated"  # Z

    .line 89
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->ignoreDeprecated:Z

    .line 90
    return-void
.end method

.method public setIgnoreUnknownFields(Z)V
    .registers 2
    .param p1, "ignoreUnknownFields"  # Z

    .line 78
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownFields:Z

    .line 79
    return-void
.end method

.method public setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .registers 2
    .param p1, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 102
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 103
    return-void
.end method

.method public setQuoteLongValues(Z)V
    .registers 2
    .param p1, "quoteLongValues"  # Z

    .line 108
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->quoteLongValues:Z

    .line 109
    return-void
.end method

.method public setReadDeprecated(Z)V
    .registers 2
    .param p1, "readDeprecated"  # Z

    .line 96
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->readDeprecated:Z

    .line 97
    return-void
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Json$Serializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;, "Lcom/badlogic/gdx/utils/Json$Serializer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setSortFields(Z)V
    .registers 2
    .param p1, "sortFields"  # Z

    .line 179
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->sortFields:Z

    .line 180
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .registers 2
    .param p1, "typeName"  # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setUsePrototypes(Z)V
    .registers 2
    .param p1, "usePrototypes"  # Z

    .line 157
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 158
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"  # Ljava/io/Writer;

    .line 281
    instance-of v0, p1, Lcom/badlogic/gdx/utils/JsonWriter;

    if-nez v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    .line 282
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Json;->quoteLongValues:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->setQuoteLongValues(Z)V

    .line 285
    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;

    .line 224
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "elementType"  # Ljava/lang/Class;

    .line 230
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 231
    .local v0, "buffer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 236
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_9
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 237
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "writer"  # Ljava/io/Writer;

    .line 259
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_9
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 260
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 242
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/Writer;)V
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "writer"  # Ljava/io/Writer;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 265
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 10
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "elementType"  # Ljava/lang/Class;
    .param p4, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-virtual {p4, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    move-object v0, v1

    .line 250
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_13
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    .line 254
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_11
    move-exception v1

    goto :goto_2d

    .line 251
    :catch_13
    move-exception v1

    .line 252
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_14
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "writer":Ljava/io/Writer;
    .end local p1  # "object":Ljava/lang/Object;
    .end local p2  # "knownType":Ljava/lang/Class;
    .end local p3  # "elementType":Ljava/lang/Class;
    .end local p4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    throw v2
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_11

    .line 254
    .end local v1  # "ex":Ljava/lang/Exception;
    .restart local v0  # "writer":Ljava/io/Writer;
    .restart local p1  # "object":Ljava/lang/Object;
    .restart local p2  # "knownType":Ljava/lang/Class;
    .restart local p3  # "elementType":Ljava/lang/Class;
    .restart local p4  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2d
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    .registers 8
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "elementType"  # Ljava/lang/Class;
    .param p4, "writer"  # Ljava/io/Writer;

    .line 270
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    .line 272
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 274
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    .line 276
    nop

    .line 277
    return-void

    .line 274
    :catchall_10
    move-exception v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    throw v1
.end method

.method public writeArrayEnd()V
    .registers 3

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 750
    nop

    .line 751
    return-void

    .line 748
    :catch_7
    move-exception v0

    .line 749
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart()V
    .registers 3

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 742
    nop

    .line 743
    return-void

    .line 740
    :catch_7
    move-exception v0

    .line 741
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 734
    nop

    .line 735
    return-void

    .line 732
    :catch_c
    move-exception v0

    .line 733
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "name"  # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 375
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "elementType"  # Ljava/lang/Class;

    .line 380
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 381
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "jsonName"  # Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 386
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 14
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "fieldName"  # Ljava/lang/String;
    .param p3, "jsonName"  # Ljava/lang/String;
    .param p4, "elementType"  # Ljava/lang/Class;

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 392
    .local v0, "type":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 393
    .local v1, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_a3

    .line 394
    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 395
    .local v4, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    if-nez p4, :cond_1a

    iget-object p4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 398
    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v5, p3}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 399
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2a
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1a .. :try_end_2a} :catch_75
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1a .. :try_end_2a} :catch_53
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2c

    .line 409
    nop

    .line 410
    return-void

    .line 405
    :catch_2c
    move-exception v5

    .line 406
    .local v5, "runtimeEx":Ljava/lang/Exception;
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v6, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 407
    .local v6, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 408
    throw v6

    .line 402
    .end local v5  # "runtimeEx":Ljava/lang/Exception;
    .end local v6  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_53
    move-exception v5

    .line 403
    .local v5, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 404
    throw v5

    .line 400
    .end local v5  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_75
    move-exception v5

    .line 401
    .local v5, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error accessing field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 393
    .end local v4  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v5  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_a3
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public writeFields(Ljava/lang/Object;)V
    .registers 19
    .param p1, "object"  # Ljava/lang/Object;

    .line 293
    move-object/from16 v1, p0

    const-string v2, ")"

    const-string v3, " ("

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 295
    .local v4, "type":Ljava/lang/Class;
    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/Json;->getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 297
    .local v5, "defaultValues":[Ljava/lang/Object;
    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v6

    .line 298
    .local v6, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    const/4 v0, 0x0

    .line 299
    .local v0, "defaultIndex":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/OrderedMap;->orderedKeys()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    .line 300
    .local v7, "fieldNames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    iget v9, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    move v10, v8

    move v8, v0

    .end local v0  # "defaultIndex":I
    .local v8, "defaultIndex":I
    .local v9, "n":I
    .local v10, "i":I
    :goto_1c
    if-ge v10, v9, :cond_145

    .line 301
    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 302
    .local v11, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    iget-boolean v0, v1, Lcom/badlogic/gdx/utils/Json;->ignoreDeprecated:Z

    if-eqz v0, :cond_37

    iget-boolean v0, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->deprecated:Z

    if-eqz v0, :cond_37

    move-object/from16 v13, p1

    move-object/from16 v16, v5

    goto/16 :goto_bc

    .line 303
    :cond_37
    iget-object v12, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 305
    .local v12, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    move-object/from16 v13, p1

    :try_start_3b
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3f
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_3b .. :try_end_3f} :catch_115
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_3b .. :try_end_3f} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3f} :catch_c8

    .line 306
    .local v0, "value":Ljava/lang/Object;
    if-eqz v5, :cond_a7

    .line 307
    add-int/lit8 v14, v8, 0x1

    .end local v8  # "defaultIndex":I
    .local v14, "defaultIndex":I
    :try_start_43
    aget-object v8, v5, v8

    .line 308
    .local v8, "defaultValue":Ljava/lang/Object;
    if-nez v0, :cond_4c

    if-nez v8, :cond_4c

    move-object/from16 v16, v5

    goto :goto_83

    .line 309
    :cond_4c
    if-eqz v0, :cond_93

    if-eqz v8, :cond_93

    .line 310
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_59

    move-object/from16 v16, v5

    goto :goto_83

    .line 311
    :cond_59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_90

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_90

    .line 312
    iget-object v15, v1, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    .line 313
    iget-object v15, v1, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    aput-object v8, v15, v16

    .line 314
    iget-object v15, v1, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;
    :try_end_79
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_43 .. :try_end_79} :catch_a1
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_43 .. :try_end_79} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_79} :catch_97

    move-object/from16 v16, v5

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .local v16, "defaultValues":[Ljava/lang/Object;
    :try_start_7b
    iget-object v5, v1, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    invoke-static {v15, v5}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5
    :try_end_81
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_7b .. :try_end_81} :catch_8c
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_7b .. :try_end_81} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_81} :catch_85

    if-eqz v5, :cond_95

    .line 300
    .end local v0  # "value":Ljava/lang/Object;
    .end local v8  # "defaultValue":Ljava/lang/Object;
    .end local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :goto_83
    move v8, v14

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    goto :goto_bc

    .line 327
    .restart local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :catch_85
    move-exception v0

    move v8, v14

    goto :goto_cb

    .line 324
    :catch_88
    move-exception v0

    move v8, v14

    goto/16 :goto_f4

    .line 322
    :catch_8c
    move-exception v0

    move v8, v14

    goto/16 :goto_118

    .line 311
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v0  # "value":Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v8  # "defaultValue":Ljava/lang/Object;
    :cond_90
    move-object/from16 v16, v5

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    goto :goto_95

    .line 309
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :cond_93
    move-object/from16 v16, v5

    .line 320
    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .end local v8  # "defaultValue":Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    :cond_95
    :goto_95
    move v8, v14

    goto :goto_a9

    .line 327
    .end local v0  # "value":Ljava/lang/Object;
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :catch_97
    move-exception v0

    move-object/from16 v16, v5

    move v8, v14

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    goto :goto_cb

    .line 324
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :catch_9c
    move-exception v0

    move-object/from16 v16, v5

    move v8, v14

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    goto :goto_f4

    .line 322
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :catch_a1
    move-exception v0

    move-object/from16 v16, v5

    move v8, v14

    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    goto/16 :goto_118

    .line 306
    .end local v14  # "defaultIndex":I
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v0  # "value":Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    .local v8, "defaultIndex":I
    :cond_a7
    move-object/from16 v16, v5

    .line 320
    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    :goto_a9
    :try_start_a9
    iget-object v5, v1, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 321
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v14, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    invoke-virtual {v1, v0, v5, v14}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_bb
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_a9 .. :try_end_bb} :catch_c6
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_a9 .. :try_end_bb} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_bb} :catch_c2

    .line 331
    .end local v0  # "value":Ljava/lang/Object;
    nop

    .line 300
    .end local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :goto_bc
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_1c

    .line 327
    .restart local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :catch_c2
    move-exception v0

    goto :goto_cb

    .line 324
    :catch_c4
    move-exception v0

    goto :goto_f4

    .line 322
    :catch_c6
    move-exception v0

    goto :goto_118

    .line 327
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :catch_c8
    move-exception v0

    move-object/from16 v16, v5

    .line 328
    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .local v0, "runtimeEx":Ljava/lang/Exception;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    :goto_cb
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 329
    .local v5, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 330
    throw v5

    .line 324
    .end local v0  # "runtimeEx":Ljava/lang/Exception;
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .local v5, "defaultValues":[Ljava/lang/Object;
    :catch_f1
    move-exception v0

    move-object/from16 v16, v5

    .line 325
    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    :goto_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 326
    throw v0

    .line 322
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :catch_115
    move-exception v0

    move-object/from16 v16, v5

    .line 323
    .end local v5  # "defaultValues":[Ljava/lang/Object;
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    .restart local v16  # "defaultValues":[Ljava/lang/Object;
    :goto_118
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error accessing field: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 333
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    .end local v9  # "n":I
    .end local v10  # "i":I
    .end local v11  # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v12  # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v16  # "defaultValues":[Ljava/lang/Object;
    .restart local v5  # "defaultValues":[Ljava/lang/Object;
    :cond_145
    return-void
.end method

.method public writeObjectEnd()V
    .registers 3

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 725
    nop

    .line 726
    return-void

    .line 723
    :catch_7
    move-exception v0

    .line 724
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart()V
    .registers 3

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 706
    nop

    .line 707
    return-void

    .line 704
    :catch_7
    move-exception v0

    .line 705
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p1, "actualType"  # Ljava/lang/Class;
    .param p2, "knownType"  # Ljava/lang/Class;

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e

    .line 716
    nop

    .line 717
    if-eqz p2, :cond_a

    if-eq p2, p1, :cond_d

    :cond_a
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->writeType(Ljava/lang/Class;)V

    .line 718
    :cond_d
    return-void

    .line 714
    :catch_e
    move-exception v0

    .line 715
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    .line 687
    nop

    .line 688
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 689
    return-void

    .line 685
    :catch_a
    move-exception v0

    .line 686
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "actualType"  # Ljava/lang/Class;
    .param p3, "knownType"  # Ljava/lang/Class;

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    .line 697
    nop

    .line 698
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 699
    return-void

    .line 695
    :catch_a
    move-exception v0

    .line 696
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeType(Ljava/lang/Class;)V
    .registers 5
    .param p1, "type"  # Ljava/lang/Class;

    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 755
    :cond_5
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_18

    .line 761
    nop

    .line 763
    return-void

    .line 759
    :catch_18
    move-exception v1

    .line 760
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"  # Ljava/lang/Object;

    .line 458
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 459
    invoke-virtual {p0, p1, v0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_e

    .line 461
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 462
    :goto_e
    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 469
    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 12
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "knownType"  # Ljava/lang/Class;
    .param p3, "elementType"  # Ljava/lang/Class;

    .line 478
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 479
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 480
    return-void

    .line 677
    :catch_9
    move-exception v0

    goto/16 :goto_3e0

    .line 483
    :cond_c
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3da

    :cond_14
    const-class v1, Ljava/lang/String;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Integer;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Boolean;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Float;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Long;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Double;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Short;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Byte;

    if-eq p2, v1, :cond_3da

    const-class v1, Ljava/lang/Character;

    if-ne p2, v1, :cond_3a

    goto/16 :goto_3da

    .line 490
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 492
    .local v1, "actualType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_42} :catch_9

    const-string v3, "value"

    if-nez v2, :cond_3d0

    :try_start_46
    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Integer;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Float;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Long;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Double;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Short;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Byte;

    if-eq v1, v2, :cond_3d0

    const-class v2, Ljava/lang/Character;

    if-ne v1, v2, :cond_6c

    goto/16 :goto_3d0

    .line 501
    :cond_6c
    instance-of v2, p1, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v2, :cond_7d

    .line 502
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 503
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/utils/Json$Serializable;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 504
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 505
    return-void

    .line 508
    :cond_7d
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 509
    .local v2, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v2, :cond_8b

    .line 510
    invoke-interface {v2, p0, p1, p2}, Lcom/badlogic/gdx/utils/Json$Serializer;->write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 511
    return-void

    .line 515
    :cond_8b
    instance-of v4, p1, Lcom/badlogic/gdx/utils/Array;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_8d} :catch_9

    const-string v5, "\nActual type: "

    if-eqz v4, :cond_d4

    .line 516
    if-eqz p2, :cond_bb

    if-eq v1, p2, :cond_bb

    :try_start_95
    const-class v3, Lcom/badlogic/gdx/utils/Array;

    if-ne v1, v3, :cond_9a

    goto :goto_bb

    .line 517
    :cond_9a
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization of an Array other than the known type is not supported.\nKnown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p1  # "value":Ljava/lang/Object;
    .end local p2  # "knownType":Ljava/lang/Class;
    .end local p3  # "elementType":Ljava/lang/Class;
    throw v0

    .line 519
    .restart local p1  # "value":Ljava/lang/Object;
    .restart local p2  # "knownType":Ljava/lang/Class;
    .restart local p3  # "elementType":Ljava/lang/Class;
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 520
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 521
    .local v3, "array":Lcom/badlogic/gdx/utils/Array;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_c4
    if-ge v4, v5, :cond_d0

    .line 522
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 521
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 523
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_d0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 524
    return-void

    .line 526
    .end local v3  # "array":Lcom/badlogic/gdx/utils/Array;
    :cond_d4
    instance-of v4, p1, Lcom/badlogic/gdx/utils/Queue;

    if-eqz v4, :cond_11b

    .line 527
    if-eqz p2, :cond_102

    if-eq v1, p2, :cond_102

    const-class v3, Lcom/badlogic/gdx/utils/Queue;

    if-ne v1, v3, :cond_e1

    goto :goto_102

    .line 528
    :cond_e1
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization of a Queue other than the known type is not supported.\nKnown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p1  # "value":Ljava/lang/Object;
    .end local p2  # "knownType":Ljava/lang/Class;
    .end local p3  # "elementType":Ljava/lang/Class;
    throw v0

    .line 530
    .restart local p1  # "value":Ljava/lang/Object;
    .restart local p2  # "knownType":Ljava/lang/Class;
    .restart local p3  # "elementType":Ljava/lang/Class;
    :cond_102
    :goto_102
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 531
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/Queue;

    .line 532
    .local v3, "queue":Lcom/badlogic/gdx/utils/Queue;
    const/4 v4, 0x0

    .restart local v4  # "i":I
    iget v5, v3, Lcom/badlogic/gdx/utils/Queue;->size:I

    .restart local v5  # "n":I
    :goto_10b
    if-ge v4, v5, :cond_117

    .line 533
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Queue;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 532
    add-int/lit8 v4, v4, 0x1

    goto :goto_10b

    .line 534
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_117
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 535
    return-void

    .line 537
    .end local v3  # "queue":Lcom/badlogic/gdx/utils/Queue;
    :cond_11b
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_16b

    .line 538
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v3, :cond_14f

    const-class v3, Ljava/util/ArrayList;

    if-eq v1, v3, :cond_14f

    if-eqz p2, :cond_12b

    if-eq p2, v1, :cond_14f

    .line 539
    :cond_12b
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 540
    const-string v3, "items"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    .line 541
    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 542
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p0, v4, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .end local v4  # "item":Ljava/lang/Object;
    goto :goto_13a

    .line 543
    :cond_148
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 544
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_16a

    .line 546
    :cond_14f
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 547
    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_159
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_167

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 548
    .restart local v4  # "item":Ljava/lang/Object;
    invoke-virtual {p0, v4, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .end local v4  # "item":Ljava/lang/Object;
    goto :goto_159

    .line 549
    :cond_167
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 551
    :goto_16a
    return-void

    .line 553
    :cond_16b
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 554
    if-nez p3, :cond_178

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    .line 555
    :cond_178
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 556
    .local v3, "length":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 557
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_180
    if-ge v4, v3, :cond_18c

    .line 558
    invoke-static {p1, v4}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 557
    add-int/lit8 v4, v4, 0x1

    goto :goto_180

    .line 559
    .end local v4  # "i":I
    :cond_18c
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 560
    return-void

    .line 564
    .end local v3  # "length":I
    :cond_190
    instance-of v4, p1, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v4, :cond_1c8

    .line 565
    if-nez p2, :cond_199

    const-class v3, Lcom/badlogic/gdx/utils/ObjectMap;

    move-object p2, v3

    .line 566
    :cond_199
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 567
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    :goto_1a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 568
    .local v4, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v6, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 569
    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v5, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 570
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    goto :goto_1a7

    .line 571
    :cond_1c4
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 572
    return-void

    .line 574
    :cond_1c8
    instance-of v4, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    if-eqz v4, :cond_206

    .line 575
    if-nez p2, :cond_1d1

    const-class v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    move-object p2, v0

    .line 576
    :cond_1d1
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 577
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    :goto_1df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    .line 578
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 579
    iget v4, v3, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 580
    .end local v3  # "entry":Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    goto :goto_1df

    .line 581
    :cond_202
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 582
    return-void

    .line 584
    :cond_206
    instance-of v4, p1, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    if-eqz v4, :cond_244

    .line 585
    if-nez p2, :cond_20f

    const-class v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    move-object p2, v0

    .line 586
    :cond_20f
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 587
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    :goto_21d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_240

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    .line 588
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 589
    iget v4, v3, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-class v5, Ljava/lang/Float;

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 590
    .end local v3  # "entry":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    goto :goto_21d

    .line 591
    :cond_240
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 592
    return-void

    .line 594
    :cond_244
    instance-of v4, p1, Lcom/badlogic/gdx/utils/ObjectSet;
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_246} :catch_9

    const-string v5, "values"

    if-eqz v4, :cond_276

    .line 595
    if-nez p2, :cond_24f

    :try_start_24c
    const-class v3, Lcom/badlogic/gdx/utils/ObjectSet;

    move-object p2, v3

    .line 596
    :cond_24f
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 597
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 598
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 599
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v3

    :goto_261
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 600
    .local v4, "entry":Ljava/lang/Object;
    invoke-virtual {p0, v4, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .end local v4  # "entry":Ljava/lang/Object;
    goto :goto_261

    .line 601
    :cond_26f
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 602
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 603
    return-void

    .line 605
    :cond_276
    instance-of v4, p1, Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v4, :cond_2ae

    .line 606
    if-nez p2, :cond_27f

    const-class v3, Lcom/badlogic/gdx/utils/IntMap;

    move-object p2, v3

    .line 607
    :cond_27f
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 608
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 609
    .local v4, "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget v6, v4, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 610
    iget-object v5, v4, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v5, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 611
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;
    goto :goto_28d

    .line 612
    :cond_2aa
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 613
    return-void

    .line 615
    :cond_2ae
    instance-of v4, p1, Lcom/badlogic/gdx/utils/LongMap;

    if-eqz v4, :cond_2e6

    .line 616
    if-nez p2, :cond_2b7

    const-class v3, Lcom/badlogic/gdx/utils/LongMap;

    move-object p2, v3

    .line 617
    :cond_2b7
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 618
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 619
    .local v4, "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-wide v6, v4, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 620
    iget-object v5, v4, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v5, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 621
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;
    goto :goto_2c5

    .line 622
    :cond_2e2
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 623
    return-void

    .line 625
    :cond_2e6
    instance-of v4, p1, Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v4, :cond_31a

    .line 626
    if-nez p2, :cond_2ef

    const-class v3, Lcom/badlogic/gdx/utils/IntSet;

    move-object p2, v3

    .line 627
    :cond_2ef
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 628
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 630
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v3

    .local v3, "iter":Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    :goto_301
    iget-boolean v4, v3, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v4, :cond_313

    .line 631
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {p0, v4, v5, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_301

    .line 632
    .end local v3  # "iter":Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    :cond_313
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 633
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 634
    return-void

    .line 636
    :cond_31a
    instance-of v4, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v4, :cond_349

    .line 637
    if-nez p2, :cond_323

    const-class v3, Lcom/badlogic/gdx/utils/ArrayMap;

    move-object p2, v3

    .line 638
    :cond_323
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 639
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 640
    .local v3, "map":Lcom/badlogic/gdx/utils/ArrayMap;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v3, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v5  # "n":I
    :goto_32c
    if-ge v4, v5, :cond_345

    .line 641
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v7, v3, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 642
    iget-object v6, v3, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-virtual {p0, v6, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_32c

    .line 644
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_345
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 645
    return-void

    .line 647
    .end local v3  # "map":Lcom/badlogic/gdx/utils/ArrayMap;
    :cond_349
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_385

    .line 648
    if-nez p2, :cond_352

    const-class v3, Ljava/util/HashMap;

    move-object p2, v3

    .line 649
    :cond_352
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 650
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_360
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_381

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 651
    .local v4, "entry":Ljava/util/Map$Entry;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 652
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 653
    .end local v4  # "entry":Ljava/util/Map$Entry;
    goto :goto_360

    .line 654
    :cond_381
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 655
    return-void

    .line 659
    :cond_385
    const-class v4, Ljava/lang/Enum;

    invoke-static {v4, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3c5

    .line 660
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v4, :cond_3b8

    if-eqz p2, :cond_395

    if-eq p2, v1, :cond_3b8

    .line 662
    :cond_395
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3a0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 664
    :cond_3a0
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 665
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    move-object v3, p1

    check-cast v3, Ljava/lang/Enum;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 667
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_3c4

    .line 669
    :cond_3b8
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    move-object v3, p1

    check-cast v3, Ljava/lang/Enum;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 671
    :goto_3c4
    return-void

    .line 674
    :cond_3c5
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 675
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->writeFields(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 679
    .end local v1  # "actualType":Ljava/lang/Class;
    .end local v2  # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    nop

    .line 680
    return-void

    .line 495
    .restart local v1  # "actualType":Ljava/lang/Class;
    :cond_3d0
    :goto_3d0
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 496
    invoke-virtual {p0, v3, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 498
    return-void

    .line 486
    .end local v1  # "actualType":Ljava/lang/Class;
    :cond_3da
    :goto_3da
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_3df
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_3df} :catch_9

    .line 487
    return-void

    .line 678
    .local v0, "ex":Ljava/io/IOException;
    :goto_3e0
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_15

    .line 420
    nop

    .line 421
    const/4 v0, 0x0

    if-nez p2, :cond_d

    .line 422
    invoke-virtual {p0, p2, v0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_14

    .line 424
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 425
    :goto_14
    return-void

    .line 418
    :catch_15
    move-exception v0

    .line 419
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;
    .param p3, "knownType"  # Ljava/lang/Class;

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_b

    .line 437
    nop

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 439
    return-void

    .line 435
    :catch_b
    move-exception v0

    .line 436
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/Object;
    .param p3, "knownType"  # Ljava/lang/Class;
    .param p4, "elementType"  # Ljava/lang/Class;

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    .line 451
    nop

    .line 452
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 453
    return-void

    .line 449
    :catch_a
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
