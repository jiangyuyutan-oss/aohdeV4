.class public Lcom/badlogic/gdx/utils/UBJsonReader;
.super Ljava/lang/Object;
.source "UBJsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# instance fields
.field public oldFormat:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    return-void
.end method


# virtual methods
.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 50
    const/16 v0, 0x2000

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->read(I)Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 51
    :catch_b
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 3
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 60
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    return-object v0

    .line 60
    :catchall_c
    move-exception v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "type"  # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_9

    .line 66
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 67
    :cond_9
    const/16 v0, 0x7b

    if-ne p2, v0, :cond_12

    .line 68
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 69
    :cond_12
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_1e

    .line 70
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    return-object v0

    .line 71
    :cond_1e
    const/16 v0, 0x54

    if-ne p2, v0, :cond_29

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    return-object v0

    .line 73
    :cond_29
    const/16 v0, 0x46

    if-ne p2, v0, :cond_34

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    return-object v0

    .line 75
    :cond_34
    const/16 v0, 0x42

    if-ne p2, v0, :cond_43

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 77
    :cond_43
    const/16 v0, 0x55

    if-ne p2, v0, :cond_52

    .line 78
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 79
    :cond_52
    const/16 v0, 0x69

    if-ne p2, v0, :cond_6a

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v1, :cond_61

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    goto :goto_65

    :cond_61
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    :goto_65
    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 81
    :cond_6a
    const/16 v0, 0x49

    if-ne p2, v0, :cond_82

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v1, :cond_79

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    goto :goto_7d

    :cond_79
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    :goto_7d
    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 83
    :cond_82
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_91

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 85
    :cond_91
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_9f

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 87
    :cond_9f
    const/16 v0, 0x64

    if-ne p2, v0, :cond_ae

    .line 88
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    return-object v0

    .line 89
    :cond_ae
    const/16 v0, 0x44

    if-ne p2, v0, :cond_bc

    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    return-object v0

    .line 91
    :cond_bc
    const/16 v0, 0x73

    if-eq p2, v0, :cond_ea

    const/16 v0, 0x53

    if-ne p2, v0, :cond_c5

    goto :goto_ea

    .line 93
    :cond_c5
    const/16 v0, 0x61

    if-eq p2, v0, :cond_e5

    const/16 v0, 0x41

    if-ne p2, v0, :cond_ce

    goto :goto_e5

    .line 95
    :cond_ce
    const/16 v0, 0x43

    if-ne p2, v0, :cond_dd

    .line 96
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 98
    :cond_dd
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unrecognized data type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_e5
    :goto_e5
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 92
    :cond_ea
    :goto_ea
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "input"  # Ljava/io/InputStream;

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "din":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 43
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    return-object v1

    .line 43
    :catchall_f
    move-exception v1

    goto :goto_18

    .line 40
    :catch_11
    move-exception v1

    .line 41
    .local v1, "ex":Ljava/io/IOException;
    :try_start_12
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "din":Ljava/io/DataInputStream;
    .end local p1  # "input":Ljava/io/InputStream;
    throw v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 43
    .end local v1  # "ex":Ljava/io/IOException;
    .restart local v0  # "din":Ljava/io/DataInputStream;
    .restart local p1  # "input":Ljava/io/InputStream;
    :goto_18
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 15
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 103
    .local v0, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 104
    .local v1, "type":B
    const/4 v2, 0x0

    .line 105
    .local v2, "valueType":B
    const/16 v3, 0x24

    if-ne v1, v3, :cond_18

    .line 106
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 107
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 109
    :cond_18
    const-wide/16 v3, -0x1

    .line 110
    .local v3, "size":J
    const/16 v5, 0x23

    const-wide/16 v6, 0x0

    if-ne v1, v5, :cond_42

    .line 111
    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v3

    .line 112
    cmp-long v5, v3, v6

    if-ltz v5, :cond_3a

    .line 113
    cmp-long v5, v3, v6

    if-nez v5, :cond_30

    return-object v0

    .line 114
    :cond_30
    if-nez v2, :cond_37

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    goto :goto_38

    :cond_37
    move v5, v2

    :goto_38
    move v1, v5

    goto :goto_42

    .line 112
    :cond_3a
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Unrecognized data type"

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_42
    :goto_42
    const/4 v5, 0x0

    .line 117
    .local v5, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v8, 0x0

    .line 118
    .local v8, "c":J
    :goto_45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v10

    if-lez v10, :cond_7e

    const/16 v10, 0x5d

    if-eq v1, v10, :cond_7e

    .line 119
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v10

    .line 120
    .local v10, "val":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object v0, v10, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 121
    const/4 v11, 0x1

    if-eqz v5, :cond_62

    .line 122
    iput-object v5, v10, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 123
    iput-object v10, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 124
    iget v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v12, v11

    iput v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_66

    .line 126
    :cond_62
    iput-object v10, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 127
    iput v11, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 129
    :goto_66
    move-object v5, v10

    .line 130
    cmp-long v11, v3, v6

    if-lez v11, :cond_74

    const-wide/16 v11, 0x1

    add-long/2addr v11, v8

    move-wide v8, v11

    cmp-long v11, v11, v3

    if-ltz v11, :cond_74

    goto :goto_7e

    .line 131
    :cond_74
    if-nez v2, :cond_7b

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    goto :goto_7c

    :cond_7b
    move v11, v2

    :goto_7c
    move v1, v11

    .line 132
    .end local v10  # "val":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_45

    .line 133
    :cond_7e
    :goto_7e
    return-object v0
.end method

.method protected parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 13
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "blockType"  # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 177
    .local v0, "dataType":B
    const/16 v1, 0x41

    if-ne p2, v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v1

    goto :goto_12

    :cond_d
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    .line 178
    .local v1, "size":J
    :goto_12
    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 179
    .local v3, "result":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v4, 0x0

    .line 180
    .local v4, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v5, 0x0

    .local v5, "i":J
    :goto_1c
    cmp-long v7, v5, v1

    if-gez v7, :cond_3a

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    .line 182
    .local v7, "val":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object v3, v7, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 183
    const/4 v8, 0x1

    if-eqz v4, :cond_31

    .line 184
    iput-object v7, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 185
    iget v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v9, v8

    iput v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_35

    .line 187
    :cond_31
    iput-object v7, v3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 188
    iput v8, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 190
    :goto_35
    move-object v4, v7

    .line 180
    .end local v7  # "val":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_1c

    .line 192
    .end local v5  # "i":J
    :cond_3a
    return-object v3
.end method

.method protected parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 19
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 138
    .local v2, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 139
    .local v3, "type":B
    const/4 v4, 0x0

    .line 140
    .local v4, "valueType":B
    const/16 v5, 0x24

    if-ne v3, v5, :cond_1c

    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 144
    :cond_1c
    const-wide/16 v5, -0x1

    .line 145
    .local v5, "size":J
    const/16 v7, 0x23

    const-wide/16 v8, 0x0

    if-ne v3, v7, :cond_41

    .line 146
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    invoke-virtual {v0, v1, v7, v10, v11}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v5

    .line 147
    cmp-long v7, v5, v8

    if-ltz v7, :cond_39

    .line 148
    cmp-long v7, v5, v8

    if-nez v7, :cond_34

    return-object v2

    .line 149
    :cond_34
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    goto :goto_41

    .line 147
    :cond_39
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v8, "Unrecognized data type"

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :cond_41
    :goto_41
    const/4 v7, 0x0

    .line 152
    .local v7, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v10, 0x0

    .line 153
    .local v10, "c":J
    :goto_44
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->available()I

    move-result v12

    if-lez v12, :cond_87

    const/16 v12, 0x7d

    if-eq v3, v12, :cond_87

    .line 154
    const/4 v12, 0x1

    invoke-virtual {v0, v1, v12, v3}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "key":Ljava/lang/String;
    if-nez v4, :cond_5a

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    goto :goto_5b

    :cond_5a
    move v14, v4

    :goto_5b
    invoke-virtual {v0, v1, v14}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 156
    .local v14, "child":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 157
    iput-object v2, v14, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 158
    if-eqz v7, :cond_70

    .line 159
    iput-object v7, v14, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 160
    iput-object v14, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 161
    iget v15, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v15, v12

    iput v15, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_74

    .line 163
    :cond_70
    iput-object v14, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 164
    iput v12, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 166
    :goto_74
    move-object v7, v14

    .line 167
    cmp-long v12, v5, v8

    if-lez v12, :cond_82

    const-wide/16 v15, 0x1

    add-long/2addr v15, v10

    move-wide v10, v15

    cmp-long v12, v15, v5

    if-ltz v12, :cond_82

    goto :goto_87

    .line 168
    :cond_82
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 169
    .end local v13  # "key":Ljava/lang/String;
    .end local v14  # "child":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_44

    .line 170
    :cond_87
    :goto_87
    return-object v2
.end method

.method protected parseSize(Ljava/io/DataInputStream;BZJ)J
    .registers 11
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "type"  # B
    .param p3, "useIntOnError"  # Z
    .param p4, "defaultValue"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const/16 v0, 0x69

    if-ne p2, v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 217
    :cond_a
    const/16 v0, 0x49

    if-ne p2, v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUShort(Ljava/io/DataInputStream;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 218
    :cond_14
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_1d
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_26

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 220
    :cond_26
    if-eqz p3, :cond_51

    .line 221
    int-to-short v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    .line 222
    .local v0, "result":J
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 223
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 224
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 225
    return-wide v0

    .line 227
    .end local v0  # "result":J
    :cond_51
    return-wide p4
.end method

.method protected parseSize(Ljava/io/DataInputStream;ZJ)J
    .registers 11
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "useIntOnError"  # Z
    .param p3, "defaultValue"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;
    .registers 4
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "type"  # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;
    .registers 12
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "sOptional"  # Z
    .param p3, "type"  # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const-wide/16 v0, -0x1

    .line 201
    .local v0, "size":J
    const/16 v2, 0x53

    if-ne p3, v2, :cond_e

    .line 202
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v0

    goto :goto_24

    .line 203
    :cond_e
    const/16 v2, 0x73

    if-ne p3, v2, :cond_18

    .line 204
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v2

    int-to-long v0, v2

    goto :goto_24

    .line 205
    :cond_18
    if-eqz p2, :cond_24

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v0

    .line 206
    :cond_24
    :goto_24
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_36

    .line 207
    cmp-long v2, v0, v2

    if-lez v2, :cond_33

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readString(Ljava/io/DataInputStream;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_33
    const-string v2, ""

    :goto_35
    return-object v2

    .line 206
    :cond_36
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unrecognized data type, string expected"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readString(Ljava/io/DataInputStream;J)Ljava/lang/String;
    .registers 7
    .param p1, "din"  # Ljava/io/DataInputStream;
    .param p2, "size"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    long-to-int v0, p2

    new-array v0, v0, [B

    .line 244
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 245
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected readUChar(Ljava/io/DataInputStream;)S
    .registers 3
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected readUInt(Ljava/io/DataInputStream;)J
    .registers 6
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUShort(Ljava/io/DataInputStream;)I
    .registers 4
    .param p1, "din"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
