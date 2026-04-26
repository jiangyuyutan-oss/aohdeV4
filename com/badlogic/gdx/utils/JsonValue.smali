.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field private doubleValue:D

.field private longValue:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public parent:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I

.field private stringValue:Ljava/lang/String;

.field private type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public constructor <init>(D)V
    .registers 4
    .param p1, "value"  # D

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .registers 4
    .param p1, "value"  # D
    .param p3, "stringValue"  # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"  # J

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .param p1, "value"  # J
    .param p3, "stringValue"  # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .registers 2
    .param p1, "type"  # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"  # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "value"  # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    .line 81
    return-void
.end method

.method private static indent(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .registers 4
    .param p0, "count"  # I
    .param p1, "buffer"  # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 1220
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1221
    .end local v0  # "i":I
    :cond_b
    return-void
.end method

.method private static indent(ILjava/io/Writer;)V
    .registers 4
    .param p0, "count"  # I
    .param p1, "buffer"  # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 1225
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1226
    .end local v0  # "i":I
    :cond_b
    return-void
.end method

.method private static isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .registers 3
    .param p0, "object"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 1207
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_16

    .line 1208
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_14

    .line 1207
    :cond_11
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 1208
    :cond_14
    :goto_14
    const/4 v1, 0x0

    return v1

    .line 1209
    .end local v0  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .registers 3
    .param p0, "object"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 1213
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_f

    .line 1214
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return v1

    .line 1213
    :cond_c
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 1215
    .end local v0  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .registers 10
    .param p1, "object"  # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "buffer"  # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p3, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 979
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_44

    .line 980
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_13

    .line 981
    const-string v0, "{}"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_c8

    .line 983
    :cond_13
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v0

    .line 985
    .local v0, "start":I
    const/16 v2, 0x7b

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 986
    const/4 v2, 0x0

    .line 987
    .local v2, "i":I
    iget-object v3, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1f
    if-eqz v3, :cond_3c

    .line 988
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 989
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 990
    invoke-direct {p0, v3, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 991
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v4, :cond_39

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 987
    :cond_39
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1f

    .line 993
    .end local v3  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_3c
    nop

    .line 995
    .end local v2  # "i":I
    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 996
    .end local v0  # "start":I
    goto/16 :goto_c8

    .line 997
    :cond_44
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 998
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_55

    .line 999
    const-string v0, "[]"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_c8

    .line 1001
    :cond_55
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v0

    .line 1003
    .restart local v0  # "start":I
    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1004
    iget-object v2, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_60
    if-eqz v2, :cond_6f

    .line 1005
    invoke-direct {p0, v2, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 1006
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v3, :cond_6c

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1004
    :cond_6c
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_60

    .line 1010
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6f
    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1011
    .end local v0  # "start":I
    goto :goto_c8

    .line 1012
    :cond_75
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1013
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c8

    .line 1014
    :cond_87
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1015
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    .line 1016
    .local v0, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    .line 1017
    .local v2, "longValue":J
    long-to-double v4, v2

    cmpl-double v4, v0, v4

    if-nez v4, :cond_9c

    long-to-double v4, v2

    goto :goto_9d

    :cond_9c
    move-wide v4, v0

    :goto_9d
    invoke-virtual {p2, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1018
    .end local v0  # "doubleValue":D
    .end local v2  # "longValue":J
    goto :goto_c8

    :cond_a1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1019
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c8

    .line 1020
    :cond_af
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1021
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c8

    .line 1022
    :cond_bd
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1023
    const-string v0, "null"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1026
    :goto_c8
    return-void

    .line 1025
    :cond_c9
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .registers 15
    .param p1, "object"  # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "buffer"  # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p3, "indent"  # I
    .param p4, "settings"  # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1075
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1076
    .local v0, "outputType":Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_81

    .line 1077
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1a

    .line 1078
    const-string v1, "{}"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_14a

    .line 1080
    :cond_1a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1081
    .local v1, "newLines":Z
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v5

    .line 1084
    .local v5, "start":I
    :goto_23
    if-eqz v1, :cond_28

    const-string v6, "{\n"

    goto :goto_2a

    :cond_28
    const-string v6, "{ "

    :goto_2a
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1085
    const/4 v6, 0x0

    .line 1086
    .local v6, "i":I
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v7, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_30
    if-eqz v7, :cond_72

    .line 1087
    if-eqz v1, :cond_37

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1088
    :cond_37
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1089
    const-string v8, ": "

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1090
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1091
    if-eqz v1, :cond_50

    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_57

    :cond_50
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_57

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1092
    :cond_57
    if-eqz v1, :cond_5b

    move v8, v2

    goto :goto_5c

    :cond_5b
    move v8, v3

    :goto_5c
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1093
    if-nez v1, :cond_6f

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_6f

    .line 1094
    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 1095
    const/4 v1, 0x1

    .line 1096
    goto :goto_23

    .line 1086
    :cond_6f
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_30

    .line 1099
    .end local v7  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_72
    nop

    .line 1101
    .end local v6  # "i":I
    if-eqz v1, :cond_7a

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1102
    :cond_7a
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1103
    .end local v1  # "newLines":Z
    .end local v5  # "start":I
    goto/16 :goto_14a

    .line 1104
    :cond_81
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 1105
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_92

    .line 1106
    const-string v1, "[]"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_14a

    .line 1108
    :cond_92
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1109
    .restart local v1  # "newLines":Z
    iget-boolean v6, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v6, :cond_a3

    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v6

    if-nez v6, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 v5, 0x0

    .line 1110
    .local v5, "wrap":Z
    :cond_a3
    :goto_a3
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v6

    .line 1113
    .local v6, "start":I
    :goto_a7
    if-eqz v1, :cond_ac

    const-string v7, "[\n"

    goto :goto_ae

    :cond_ac
    const-string v7, "[ "

    :goto_ae
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1114
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v7  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_b3
    if-eqz v7, :cond_e9

    .line 1115
    if-eqz v1, :cond_ba

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1116
    :cond_ba
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1117
    if-eqz v1, :cond_c5

    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_cc

    :cond_c5
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_cc

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1118
    :cond_cc
    if-eqz v1, :cond_d0

    move v8, v2

    goto :goto_d1

    :cond_d0
    move v8, v3

    :goto_d1
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1119
    if-eqz v5, :cond_e6

    if-nez v1, :cond_e6

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_e6

    .line 1120
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 1121
    const/4 v1, 0x1

    .line 1122
    goto :goto_a7

    .line 1114
    :cond_e6
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_b3

    .line 1125
    .end local v7  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_e9
    nop

    .line 1127
    if-eqz v1, :cond_f1

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1128
    :cond_f1
    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1129
    .end local v1  # "newLines":Z
    .end local v5  # "wrap":Z
    .end local v6  # "start":I
    goto :goto_14a

    .line 1130
    :cond_f7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1131
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_14a

    .line 1132
    :cond_109
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 1133
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    .line 1134
    .local v1, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v3

    .line 1135
    .local v3, "longValue":J
    long-to-double v5, v3

    cmpl-double v5, v1, v5

    if-nez v5, :cond_11e

    long-to-double v5, v3

    goto :goto_11f

    :cond_11e
    move-wide v5, v1

    :goto_11f
    invoke-virtual {p2, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1136
    .end local v1  # "doubleValue":D
    .end local v3  # "longValue":J
    goto :goto_14a

    :cond_123
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v1

    if-eqz v1, :cond_131

    .line 1137
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_14a

    .line 1138
    :cond_131
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 1139
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_14a

    .line 1140
    :cond_13f
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 1141
    const-string v1, "null"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1144
    :goto_14a
    return-void

    .line 1143
    :cond_14b
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .registers 13
    .param p1, "object"  # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "writer"  # Ljava/io/Writer;
    .param p3, "indent"  # I
    .param p4, "settings"  # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1156
    .local v0, "outputType":Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_75

    .line 1157
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1a

    .line 1158
    const-string v1, "{}"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_128

    .line 1160
    :cond_1a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v6, 0x6

    if-le v1, v6, :cond_26

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :cond_27
    :goto_27
    move v1, v5

    .line 1161
    .local v1, "newLines":Z
    if-eqz v1, :cond_2d

    const-string v5, "{\n"

    goto :goto_2f

    :cond_2d
    const-string v5, "{ "

    :goto_2f
    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1162
    const/4 v5, 0x0

    .line 1163
    .local v5, "i":I
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_35
    if-eqz v6, :cond_67

    .line 1164
    if-eqz v1, :cond_3c

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1165
    :cond_3c
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1166
    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1167
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1168
    if-eqz v1, :cond_55

    sget-object v7, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v7, :cond_5c

    :cond_55
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v7, :cond_5c

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1169
    :cond_5c
    if-eqz v1, :cond_60

    move v7, v2

    goto :goto_61

    :cond_60
    move v7, v3

    :goto_61
    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1163
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_35

    .line 1171
    .end local v6  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_67
    if-eqz v1, :cond_6e

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1172
    :cond_6e
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1173
    .end local v1  # "newLines":Z
    .end local v5  # "i":I
    goto/16 :goto_128

    .line 1174
    :cond_75
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1175
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_86

    .line 1176
    const-string v1, "[]"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_128

    .line 1178
    :cond_86
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1179
    .restart local v1  # "newLines":Z
    if-eqz v1, :cond_90

    const-string v5, "[\n"

    goto :goto_92

    :cond_90
    const-string v5, "[ "

    :goto_92
    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1180
    const/4 v5, 0x0

    .line 1181
    .restart local v5  # "i":I
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v6  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_98
    if-eqz v6, :cond_bc

    .line 1182
    if-eqz v1, :cond_9f

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1183
    :cond_9f
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1184
    if-eqz v1, :cond_aa

    sget-object v7, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v7, :cond_b1

    :cond_aa
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v7, :cond_b1

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1185
    :cond_b1
    if-eqz v1, :cond_b5

    move v7, v2

    goto :goto_b6

    :cond_b5
    move v7, v3

    :goto_b6
    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1181
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_98

    .line 1187
    .end local v6  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_bc
    if-eqz v1, :cond_c3

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1188
    :cond_c3
    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1189
    .end local v1  # "newLines":Z
    .end local v5  # "i":I
    goto :goto_128

    .line 1190
    :cond_c9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1191
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_128

    .line 1192
    :cond_db
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1193
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    .line 1194
    .local v1, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v3

    .line 1195
    .local v3, "longValue":J
    long-to-double v5, v3

    cmpl-double v5, v1, v5

    if-nez v5, :cond_f0

    long-to-double v5, v3

    goto :goto_f1

    :cond_f0
    move-wide v5, v1

    :goto_f1
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1196
    .end local v1  # "doubleValue":D
    .end local v3  # "longValue":J
    goto :goto_128

    :cond_f9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 1197
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_128

    .line 1198
    :cond_10b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 1199
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_128

    .line 1200
    :cond_11d
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 1201
    const-string v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1204
    :goto_128
    return-void

    .line 1203
    :cond_129
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 4
    .param p1, "value"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 903
    iput-object p0, p1, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 904
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 905
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 906
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_f

    .line 907
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 918
    return-void

    .line 910
    :cond_f
    :goto_f
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_18

    .line 911
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 912
    iput-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 913
    return-void

    .line 915
    :cond_18
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_f
.end method

.method public addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 896
    if-eqz p1, :cond_8

    .line 897
    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 898
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->addChild(Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 899
    return-void

    .line 896
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBoolean()Z
    .registers 8

    .line 280
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_52

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_2c  #0x4
    iget-wide v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    return v3

    .line 286
    :pswitch_35  #0x3
    iget-wide v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v4

    :goto_3d
    return v3

    .line 284
    :pswitch_3e  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v0, v5

    if-eqz v0, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    return v3

    .line 282
    :pswitch_49  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_3e  #00000002
        :pswitch_35  #00000003
        :pswitch_2c  #00000004
    .end packed-switch
.end method

.method public asBooleanArray()[Z
    .registers 11

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_67

    .line 493
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Z

    .line 494
    .local v0, "array":[Z
    const/4 v1, 0x0

    .line 495
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_66

    .line 497
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_82

    .line 511
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to boolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    :pswitch_3b  #0x4
    iget-wide v8, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_42

    move v6, v7

    :cond_42
    move v3, v6

    .line 509
    .local v3, "v":Z
    goto :goto_5f

    .line 505
    .end local v3  # "v":Z
    :pswitch_44  #0x3
    iget-wide v8, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_4b

    move v6, v7

    :cond_4b
    move v3, v6

    .line 506
    .restart local v3  # "v":Z
    goto :goto_5f

    .line 502
    .end local v3  # "v":Z
    :pswitch_4d  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v8, 0x0

    cmpl-double v3, v3, v8

    if-nez v3, :cond_56

    move v6, v7

    :cond_56
    move v3, v6

    .line 503
    .restart local v3  # "v":Z
    goto :goto_5f

    .line 499
    .end local v3  # "v":Z
    :pswitch_58  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 500
    .restart local v3  # "v":Z
    nop

    .line 513
    :goto_5f
    aput-boolean v3, v0, v1

    .line 495
    .end local v3  # "v":Z
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 515
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_66
    return-object v0

    .line 492
    .end local v0  # "array":[Z
    .end local v1  # "i":I
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_58  #00000001
        :pswitch_4d  #00000002
        :pswitch_44  #00000003
        :pswitch_3b  #00000004
    .end packed-switch
.end method

.method public asByte()B
    .registers 5

    .line 296
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    .line 302
    :pswitch_34  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 300
    :pswitch_39  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 298
    :pswitch_3e  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_39  #00000002
        :pswitch_34  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asByteArray()[B
    .registers 8

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5c

    .line 522
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [B

    .line 523
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 524
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_5b

    .line 526
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 540
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 538
    .local v3, "v":B
    :goto_42
    goto :goto_54

    .line 534
    .end local v3  # "v":B
    :pswitch_43  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 535
    .restart local v3  # "v":B
    goto :goto_54

    .line 531
    .end local v3  # "v":B
    :pswitch_48  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-byte v3, v3

    .line 532
    .restart local v3  # "v":B
    goto :goto_54

    .line 528
    .end local v3  # "v":B
    :pswitch_4d  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    .line 529
    .restart local v3  # "v":B
    nop

    .line 542
    :goto_54
    aput-byte v3, v0, v1

    .line 524
    .end local v3  # "v":B
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 544
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5b
    return-object v0

    .line 521
    .end local v0  # "array":[B
    .end local v1  # "i":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_48  #00000002
        :pswitch_43  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asChar()C
    .registers 7

    .line 328
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4e

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_29  #0x4
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1

    .line 334
    :pswitch_33  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 332
    :pswitch_38  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 330
    :pswitch_3d  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_46

    goto :goto_4c

    :cond_46
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_38  #00000002
        :pswitch_33  #00000003
        :pswitch_29  #00000004
    .end packed-switch
.end method

.method public asCharArray()[C
    .registers 10

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_66

    .line 580
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [C

    .line 581
    .local v0, "array":[C
    const/4 v1, 0x0

    .line 582
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_65

    .line 584
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_82

    .line 598
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    :pswitch_38  #0x4
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_41

    const/4 v4, 0x1

    :cond_41
    move v3, v4

    .line 596
    .local v3, "v":C
    goto :goto_5e

    .line 592
    .end local v3  # "v":C
    :pswitch_43  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-char v3, v3

    .line 593
    .restart local v3  # "v":C
    goto :goto_5e

    .line 589
    .end local v3  # "v":C
    :pswitch_48  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-char v3, v3

    .line 590
    .restart local v3  # "v":C
    goto :goto_5e

    .line 586
    .end local v3  # "v":C
    :pswitch_4d  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_56

    goto :goto_5c

    :cond_56
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_5c
    move v3, v4

    .line 587
    .restart local v3  # "v":C
    nop

    .line 600
    :goto_5e
    aput-char v3, v0, v1

    .line 582
    .end local v3  # "v":C
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 602
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_65
    return-object v0

    .line 579
    .end local v0  # "array":[C
    .end local v1  # "i":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_48  #00000002
        :pswitch_43  #00000003
        :pswitch_38  #00000004
    .end packed-switch
.end method

.method public asDouble()D
    .registers 5

    .line 232
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto :goto_35

    :cond_33
    const-wide/16 v0, 0x0

    :goto_35
    return-wide v0

    .line 238
    :pswitch_36  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v0, v0

    return-wide v0

    .line 236
    :pswitch_3a  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    return-wide v0

    .line 234
    :pswitch_3d  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_3a  #00000002
        :pswitch_36  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asDoubleArray()[D
    .registers 8

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5b

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [D

    .line 407
    .local v0, "array":[D
    const/4 v1, 0x0

    .line 408
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_5a

    .line 410
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_76

    .line 424
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to double: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    goto :goto_44

    :cond_42
    const-wide/16 v3, 0x0

    .line 422
    .local v3, "v":D
    :goto_44
    goto :goto_53

    .line 418
    .end local v3  # "v":D
    :pswitch_45  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v3, v3

    .line 419
    .restart local v3  # "v":D
    goto :goto_53

    .line 415
    .end local v3  # "v":D
    :pswitch_49  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 416
    .restart local v3  # "v":D
    goto :goto_53

    .line 412
    .end local v3  # "v":D
    :pswitch_4c  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 413
    .restart local v3  # "v":D
    nop

    .line 426
    :goto_53
    aput-wide v3, v0, v1

    .line 408
    .end local v3  # "v":D
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 428
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5a
    return-object v0

    .line 405
    .end local v0  # "array":[D
    .end local v1  # "i":I
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_49  #00000002
        :pswitch_45  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asFloat()F
    .registers 5

    .line 216
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0

    .line 222
    :pswitch_35  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v0, v0

    return v0

    .line 220
    :pswitch_39  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v0, v0

    return v0

    .line 218
    :pswitch_3d  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_39  #00000002
        :pswitch_35  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asFloatArray()[F
    .registers 8

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5b

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [F

    .line 378
    .local v0, "array":[F
    const/4 v1, 0x0

    .line 379
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_5a

    .line 381
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_76

    .line 395
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to float: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    .line 393
    .local v3, "v":F
    :goto_43
    goto :goto_53

    .line 389
    .end local v3  # "v":F
    :pswitch_44  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v3, v3

    .line 390
    .restart local v3  # "v":F
    goto :goto_53

    .line 386
    .end local v3  # "v":F
    :pswitch_48  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v3, v3

    .line 387
    .restart local v3  # "v":F
    goto :goto_53

    .line 383
    .end local v3  # "v":F
    :pswitch_4c  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 384
    .restart local v3  # "v":F
    nop

    .line 397
    :goto_53
    aput v3, v0, v1

    .line 379
    .end local v3  # "v":F
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 399
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5a
    return-object v0

    .line 376
    .end local v0  # "array":[F
    .end local v1  # "i":I
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_48  #00000002
        :pswitch_44  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asInt()I
    .registers 5

    .line 264
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    .line 270
    :pswitch_34  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    return v0

    .line 268
    :pswitch_38  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    return v0

    .line 266
    :pswitch_3c  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_38  #00000002
        :pswitch_34  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asIntArray()[I
    .registers 8

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5a

    .line 464
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [I

    .line 465
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 466
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_59

    .line 468
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_76

    .line 482
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 480
    .local v3, "v":I
    :goto_42
    goto :goto_52

    .line 476
    .end local v3  # "v":I
    :pswitch_43  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    .line 477
    .restart local v3  # "v":I
    goto :goto_52

    .line 473
    .end local v3  # "v":I
    :pswitch_47  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    .line 474
    .restart local v3  # "v":I
    goto :goto_52

    .line 470
    .end local v3  # "v":I
    :pswitch_4b  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 471
    .restart local v3  # "v":I
    nop

    .line 484
    :goto_52
    aput v3, v0, v1

    .line 466
    .end local v3  # "v":I
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 486
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_59
    return-object v0

    .line 463
    .end local v0  # "array":[I
    .end local v1  # "i":I
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_47  #00000002
        :pswitch_43  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asLong()J
    .registers 5

    .line 248
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const-wide/16 v2, 0x1

    :cond_32
    return-wide v2

    .line 254
    :pswitch_33  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    return-wide v0

    .line 252
    :pswitch_36  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v0, v0

    return-wide v0

    .line 250
    :pswitch_3a  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_36  #00000002
        :pswitch_33  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asLongArray()[J
    .registers 8

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_59

    .line 435
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [J

    .line 436
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_58

    .line 439
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_74

    .line 453
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_41

    const-wide/16 v5, 0x1

    :cond_41
    move-wide v3, v5

    .line 451
    .local v3, "v":J
    goto :goto_51

    .line 447
    .end local v3  # "v":J
    :pswitch_43  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 448
    .restart local v3  # "v":J
    goto :goto_51

    .line 444
    .end local v3  # "v":J
    :pswitch_46  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v3, v3

    .line 445
    .restart local v3  # "v":J
    goto :goto_51

    .line 441
    .end local v3  # "v":J
    :pswitch_4a  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 442
    .restart local v3  # "v":J
    nop

    .line 455
    :goto_51
    aput-wide v3, v0, v1

    .line 437
    .end local v3  # "v":J
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 457
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_58
    return-object v0

    .line 434
    .end local v0  # "array":[J
    .end local v1  # "i":I
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_4a  #00000001
        :pswitch_46  #00000002
        :pswitch_43  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asShort()S
    .registers 5

    .line 312
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_28  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    .line 318
    :pswitch_34  #0x3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 316
    :pswitch_39  #0x2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 314
    :pswitch_3e  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_39  #00000002
        :pswitch_34  #00000003
        :pswitch_28  #00000004
    .end packed-switch
.end method

.method public asShortArray()[S
    .registers 8

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5c

    .line 551
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [S

    .line 552
    .local v0, "array":[S
    const/4 v1, 0x0

    .line 553
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_5b

    .line 555
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 569
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to short: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    :pswitch_37  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 567
    .local v3, "v":S
    :goto_42
    goto :goto_54

    .line 563
    .end local v3  # "v":S
    :pswitch_43  #0x3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-short v3, v3

    .line 564
    .restart local v3  # "v":S
    goto :goto_54

    .line 560
    .end local v3  # "v":S
    :pswitch_48  #0x2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-short v3, v3

    .line 561
    .restart local v3  # "v":S
    goto :goto_54

    .line 557
    .end local v3  # "v":S
    :pswitch_4d  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 558
    .restart local v3  # "v":S
    nop

    .line 571
    :goto_54
    aput-short v3, v0, v1

    .line 553
    .end local v3  # "v":S
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 573
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5b
    return-object v0

    .line 550
    .end local v0  # "array":[S
    .end local v1  # "i":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_48  #00000002
        :pswitch_43  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method public asString()Ljava/lang/String;
    .registers 5

    .line 198
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_28  #0x5
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_2a  #0x4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    const-string v0, "true"

    goto :goto_37

    :cond_35
    const-string v0, "false"

    :goto_37
    return-object v0

    .line 204
    :pswitch_38  #0x3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_45

    :cond_3f
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_45
    return-object v0

    .line 202
    :pswitch_46  #0x2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_53

    :cond_4d
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_53
    return-object v0

    .line 200
    :pswitch_54  #0x1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54  #00000001
        :pswitch_46  #00000002
        :pswitch_38  #00000003
        :pswitch_2a  #00000004
        :pswitch_28  #00000005
    .end packed-switch
.end method

.method public asStringArray()[Ljava/lang/String;
    .registers 8

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6e

    .line 345
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    .line 346
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 347
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v2, :cond_6d

    .line 349
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8a

    .line 366
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :pswitch_37  #0x5
    const/4 v3, 0x0

    .line 364
    .local v3, "v":Ljava/lang/String;
    goto :goto_66

    .line 360
    .end local v3  # "v":Ljava/lang/String;
    :pswitch_39  #0x4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_44

    const-string v3, "true"

    goto :goto_46

    :cond_44
    const-string v3, "false"

    .line 361
    .restart local v3  # "v":Ljava/lang/String;
    :goto_46
    goto :goto_66

    .line 357
    .end local v3  # "v":Ljava/lang/String;
    :pswitch_47  #0x3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_54

    :cond_4e
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3  # "v":Ljava/lang/String;
    :goto_54
    goto :goto_66

    .line 354
    .end local v3  # "v":Ljava/lang/String;
    :pswitch_55  #0x2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_62

    :cond_5c
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3  # "v":Ljava/lang/String;
    :goto_62
    goto :goto_66

    .line 351
    .end local v3  # "v":Ljava/lang/String;
    :pswitch_63  #0x1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 352
    .restart local v3  # "v":Ljava/lang/String;
    nop

    .line 368
    :goto_66
    aput-object v3, v0, v1

    .line 347
    .end local v3  # "v":Ljava/lang/String;
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 370
    .end local v2  # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6d
    return-object v0

    .line 344
    .end local v0  # "array":[Ljava/lang/String;
    .end local v1  # "i":I
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_55  #00000002
        :pswitch_47  #00000003
        :pswitch_39  #00000004
        :pswitch_37  #00000005
    .end packed-switch
.end method

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 891
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 3
    .param p1, "index"  # I

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 88
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 90
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 92
    :cond_b
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 99
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 100
    :cond_10
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 101
    :cond_13
    return-object v0
.end method

.method public getBoolean(I)Z
    .registers 6
    .param p1, "index"  # I

    .line 787
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 788
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 789
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1

    .line 788
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 715
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 716
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 717
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1

    .line 716
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z

    .line 650
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 651
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getByte(I)B
    .registers 6
    .param p1, "index"  # I

    .line 795
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 796
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 797
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1

    .line 796
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 723
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 724
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 725
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1

    .line 724
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # B

    .line 656
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 657
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getChar(I)C
    .registers 6
    .param p1, "index"  # I

    .line 811
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 812
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 813
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1

    .line 812
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 739
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 740
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 741
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1

    .line 740
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # C

    .line 668
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 669
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 613
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 614
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_a
    return-object v1
.end method

.method public getDouble(I)D
    .registers 6
    .param p1, "index"  # I

    .line 763
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 764
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 765
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    return-wide v1

    .line 764
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 691
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 692
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 693
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    return-wide v1

    .line 692
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # D

    .line 632
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 633
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    goto :goto_19

    :cond_18
    :goto_18
    move-wide v1, p2

    :goto_19
    return-wide v1
.end method

.method public getFloat(I)F
    .registers 6
    .param p1, "index"  # I

    .line 755
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 756
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 757
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1

    .line 756
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 683
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 684
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 685
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1

    .line 684
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # F

    .line 626
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 627
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getInt(I)I
    .registers 6
    .param p1, "index"  # I

    .line 779
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 780
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 781
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1

    .line 780
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 707
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 708
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 709
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1

    .line 708
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # I

    .line 644
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 645
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getLong(I)J
    .registers 6
    .param p1, "index"  # I

    .line 771
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 772
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 773
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    return-wide v1

    .line 772
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 699
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 700
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 701
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    return-wide v1

    .line 700
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # J

    .line 638
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 639
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    goto :goto_19

    :cond_18
    :goto_18
    move-wide v1, p2

    :goto_19
    return-wide v1
.end method

.method public getShort(I)S
    .registers 6
    .param p1, "index"  # I

    .line 803
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 804
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 805
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1

    .line 804
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 731
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 732
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 733
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1

    .line 732
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # S

    .line 662
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 663
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    goto :goto_19

    :cond_18
    :goto_18
    move v1, p2

    :goto_19
    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"  # I

    .line 747
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 748
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 749
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 748
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 675
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 676
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_b

    .line 677
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Ljava/lang/String;

    .line 620
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 621
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    :goto_18
    move-object v1, p2

    :goto_19
    return-object v1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 607
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isArray()Z
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDouble()Z
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLong()Z
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 3

    .line 855
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNumber()Z
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isObject()Z
    .registers 3

    .line 830
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isString()Z
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValue()Z
    .registers 3

    .line 860
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 868
    const/4 v0, 0x0

    return v0

    .line 866
    :pswitch_f  #0x1, 0x2, 0x3, 0x4, 0x5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_f  #00000002
        :pswitch_f  #00000003
        :pswitch_f  #00000004
        :pswitch_f  #00000005
    .end packed-switch
.end method

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .registers 2

    .line 1029
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 874
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 180
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public parent()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 885
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .registers 4
    .param p1, "settings"  # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1069
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 1070
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1071
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .registers 5
    .param p1, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .param p2, "singleLineColumns"  # I

    .line 1062
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1063
    .local v0, "settings":Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1064
    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    .line 1065
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;Ljava/io/Writer;)V
    .registers 5
    .param p1, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .param p2, "writer"  # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1149
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1150
    .local v0, "settings":Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1151
    const/4 v1, 0x0

    invoke-direct {p0, p0, p2, v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1152
    return-void
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "index"  # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 137
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 138
    :cond_8
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_19

    .line 139
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 140
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_29

    .line 142
    :cond_19
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 143
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 145
    :cond_29
    :goto_29
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 146
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 152
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 153
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 154
    :cond_8
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_19

    .line 155
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_29

    .line 158
    :cond_19
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 159
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 161
    :cond_29
    :goto_29
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 162
    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_35

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_1c

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2c

    .line 172
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 175
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 176
    return-void

    .line 167
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6
    .param p1, "index"  # I

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 114
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 115
    add-int/lit8 p1, p1, -0x1

    .line 116
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 118
    :cond_b
    if-eqz v0, :cond_e

    .line 119
    return-object v0

    .line 118
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 126
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 127
    :cond_10
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 128
    :cond_13
    if-eqz v0, :cond_16

    .line 129
    return-object v0

    .line 128
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(DLjava/lang/String;)V
    .registers 6
    .param p1, "value"  # D
    .param p3, "stringValue"  # Ljava/lang/String;

    .line 952
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 953
    double-to-long v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 954
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 955
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 956
    return-void
.end method

.method public set(JLjava/lang/String;)V
    .registers 6
    .param p1, "value"  # J
    .param p3, "stringValue"  # Ljava/lang/String;

    .line 960
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 961
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 962
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 963
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 964
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"  # Ljava/lang/String;

    .line 946
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 947
    if-nez p1, :cond_7

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_9
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 948
    return-void
.end method

.method public set(Z)V
    .registers 4
    .param p1, "value"  # Z

    .line 967
    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 968
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 969
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 879
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 880
    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 2
    .param p1, "next"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 929
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 930
    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 2
    .param p1, "prev"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 941
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 942
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .registers 4
    .param p1, "type"  # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 821
    if-eqz p1, :cond_5

    .line 822
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 823
    return-void

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;
    .registers 4
    .param p1, "outputType"  # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 972
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 973
    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 974
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-direct {p0, p0, v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 975
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1033
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    .line 1034
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v2, :cond_39

    const-string v1, ""

    goto :goto_4c

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_19

    .line 1040
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_d

    const-string v0, "[]"

    return-object v0

    .line 1041
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_16

    const-string v0, "{}"

    return-object v0

    .line 1042
    :cond_16
    const-string v0, ""

    return-object v0

    .line 1045
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_4c

    .line 1046
    const-string v0, "[]"

    .line 1047
    .local v0, "trace":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1048
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_28
    if-eqz v2, :cond_4b

    .line 1049
    if-ne v2, p0, :cond_46

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    goto :goto_4b

    .line 1048
    :cond_46
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1054
    .end local v1  # "i":I
    .end local v2  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4b
    :goto_4b
    goto :goto_8c

    .end local v0  # "trace":Ljava/lang/String;
    :cond_4c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_79

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v2, "\\\""

    const-string v3, "\""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0  # "trace":Ljava/lang/String;
    goto :goto_8c

    .line 1057
    .end local v0  # "trace":Ljava/lang/String;
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .restart local v0  # "trace":Ljava/lang/String;
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .registers 2

    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
