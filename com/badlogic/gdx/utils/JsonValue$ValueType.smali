.class public final enum Lcom/badlogic/gdx/utils/JsonValue$ValueType;
.super Ljava/lang/Enum;
.source "JsonValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/JsonValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1260
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "array"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "stringValue"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "doubleValue"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "longValue"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "booleanValue"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "nullValue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 1259
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v7, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v8, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v9, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    filled-new-array/range {v3 .. v9}, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 1259
    const-class v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .registers 1

    .line 1259
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
