.class public final Lcom/badlogic/gdx/utils/PropertiesUtils;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V
    .registers 10
    .param p0, "outBuffer"  # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p1, "string"  # Ljava/lang/String;
    .param p2, "escapeSpace"  # Z
    .param p3, "escapeUnicode"  # Z

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 253
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_89

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 256
    .local v2, "ch":C
    const/16 v3, 0x3d

    const/16 v4, 0x5c

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_23

    .line 257
    if-ne v2, v4, :cond_1a

    const-string v3, "\\\\"

    goto :goto_1e

    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1e
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 258
    goto/16 :goto_85

    .line 260
    :cond_23
    sparse-switch v2, :sswitch_data_8a

    .line 287
    const/16 v3, 0x20

    if-lt v2, v3, :cond_60

    const/16 v3, 0x7e

    if-le v2, v3, :cond_5e

    goto :goto_60

    .line 284
    :sswitch_2f
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 285
    goto :goto_85

    .line 262
    :sswitch_37
    if-eqz v1, :cond_40

    if-eqz p2, :cond_3c

    goto :goto_40

    .line 265
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 267
    goto :goto_85

    .line 263
    :cond_40
    :goto_40
    const-string v3, "\\ "

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_85

    .line 272
    :sswitch_46
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 273
    goto :goto_85

    .line 278
    :sswitch_4c
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 279
    goto :goto_85

    .line 269
    :sswitch_52
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 270
    goto :goto_85

    .line 275
    :sswitch_58
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 276
    goto :goto_85

    .line 287
    :cond_5e
    const/4 v3, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v3, 0x1

    :goto_61
    and-int/2addr v3, p3

    if-eqz v3, :cond_82

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_7e

    .line 291
    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 293
    .end local v4  # "j":I
    :cond_7e
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 294
    .end local v3  # "hex":Ljava/lang/String;
    goto :goto_85

    .line 295
    :cond_82
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 253
    .end local v2  # "ch":C
    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 300
    .end local v1  # "i":I
    :cond_89
    return-void

    :sswitch_data_8a
    .sparse-switch
        0x9 -> :sswitch_58
        0xa -> :sswitch_52
        0xc -> :sswitch_4c
        0xd -> :sswitch_46
        0x20 -> :sswitch_37
        0x21 -> :sswitch_2f
        0x23 -> :sswitch_2f
        0x3a -> :sswitch_2f
        0x3d -> :sswitch_2f
    .end sparse-switch
.end method

.method public static load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V
    .registers 19
    .param p1, "reader"  # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_138

    .line 51
    if-eqz v1, :cond_130

    .line 52
    const/4 v2, 0x0

    .local v2, "mode":I
    const/4 v3, 0x0

    .local v3, "unicode":I
    const/4 v4, 0x0

    .line 53
    .local v4, "count":I
    const/16 v5, 0x28

    new-array v5, v5, [C

    .line 54
    .local v5, "buf":[C
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v7, -0x1

    .line 55
    .local v7, "keyLength":I
    const/4 v8, 0x1

    .line 57
    .local v8, "firstChar":Z
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v9, "br":Ljava/io/BufferedReader;
    :cond_17
    :goto_17
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 61
    .local v10, "intVal":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-ne v10, v14, :cond_5d

    .line 62
    nop

    .line 193
    if-ne v2, v11, :cond_30

    if-le v4, v13, :cond_28

    goto :goto_30

    .line 194
    :cond_28
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 196
    :cond_30
    :goto_30
    if-ne v7, v14, :cond_35

    if-lez v6, :cond_35

    .line 197
    move v7, v6

    .line 199
    :cond_35
    if-ltz v7, :cond_5c

    .line 200
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5, v15, v6}, Ljava/lang/String;-><init>([CII)V

    .line 201
    .local v11, "temp":Ljava/lang/String;
    invoke-virtual {v11, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 202
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "value":Ljava/lang/String;
    if-ne v2, v12, :cond_59

    .line 204
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\u0000"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 206
    :cond_59
    invoke-virtual {v0, v13, v14}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v11  # "temp":Ljava/lang/String;
    .end local v13  # "key":Ljava/lang/String;
    .end local v14  # "value":Ljava/lang/String;
    :cond_5c
    return-void

    .line 64
    :cond_5d
    int-to-char v14, v10

    .line 66
    .local v14, "nextChar":C
    array-length v12, v5

    if-ne v6, v12, :cond_69

    .line 67
    array-length v12, v5

    mul-int/2addr v12, v11

    new-array v12, v12, [C

    .line 68
    .local v12, "newBuf":[C
    invoke-static {v5, v15, v12, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object v5, v12

    .line 71
    .end local v12  # "newBuf":[C
    :cond_69
    const/16 v12, 0xa

    if-ne v2, v11, :cond_96

    .line 72
    const/16 v11, 0x10

    invoke-static {v14, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    .line 73
    .local v11, "digit":I
    if-ltz v11, :cond_7e

    .line 74
    shl-int/lit8 v16, v3, 0x4

    add-int v3, v16, v11

    .line 75
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v13, :cond_80

    .line 76
    goto :goto_17

    .line 78
    :cond_7e
    if-le v4, v13, :cond_8e

    .line 81
    :cond_80
    const/4 v2, 0x0

    .line 82
    add-int/lit8 v16, v6, 0x1

    .end local v6  # "offset":I
    .local v16, "offset":I
    int-to-char v13, v3

    aput-char v13, v5, v6

    .line 83
    if-eq v14, v12, :cond_8b

    .line 84
    move/from16 v6, v16

    goto :goto_17

    .line 83
    :cond_8b
    move/from16 v6, v16

    goto :goto_96

    .line 79
    .end local v16  # "offset":I
    .restart local v6  # "offset":I
    :cond_8e
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid Unicode sequence: illegal character"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 87
    .end local v11  # "digit":I
    :cond_96
    :goto_96
    const/4 v11, 0x1

    if-ne v2, v11, :cond_ba

    .line 88
    const/4 v2, 0x0

    .line 89
    sparse-switch v14, :sswitch_data_140

    goto :goto_b8

    .line 112
    :sswitch_9e
    const/4 v2, 0x2

    .line 113
    move v4, v15

    move v3, v15

    .line 114
    goto/16 :goto_17

    .line 109
    :sswitch_a3
    const/16 v14, 0x9

    .line 110
    goto :goto_b8

    .line 106
    :sswitch_a6
    const/16 v14, 0xd

    .line 107
    goto :goto_b8

    .line 103
    :sswitch_a9
    const/16 v14, 0xa

    .line 104
    goto :goto_b8

    .line 100
    :sswitch_ac
    const/16 v14, 0xc

    .line 101
    goto :goto_b8

    .line 97
    :sswitch_af
    const/16 v14, 0x8

    .line 98
    goto :goto_b8

    .line 91
    :sswitch_b2
    const/4 v2, 0x3

    .line 92
    goto/16 :goto_17

    .line 94
    :sswitch_b5
    const/4 v2, 0x5

    .line 95
    goto/16 :goto_17

    .line 114
    :goto_b8
    goto/16 :goto_123

    .line 117
    :cond_ba
    const/4 v11, 0x3

    sparse-switch v14, :sswitch_data_162

    goto :goto_106

    .line 154
    :sswitch_bf
    const/4 v11, 0x4

    if-ne v2, v11, :cond_c3

    .line 155
    move v7, v6

    .line 157
    :cond_c3
    const/4 v2, 0x1

    .line 158
    goto/16 :goto_17

    .line 161
    :sswitch_c6
    const/4 v12, -0x1

    if-ne v7, v12, :cond_106

    .line 162
    const/4 v2, 0x0

    .line 163
    move v7, v6

    .line 164
    goto/16 :goto_17

    .line 120
    :sswitch_cd
    if-eqz v8, :cond_106

    .line 122
    :cond_cf
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 123
    const/4 v11, -0x1

    if-ne v10, v11, :cond_d8

    .line 124
    goto/16 :goto_17

    .line 126
    :cond_d8
    int-to-char v14, v10

    .line 127
    const/16 v11, 0xd

    if-eq v14, v11, :cond_17

    if-ne v14, v12, :cond_cf

    .line 128
    goto/16 :goto_17

    .line 135
    :sswitch_e1
    if-ne v2, v11, :cond_e6

    .line 136
    const/4 v2, 0x5

    .line 137
    goto/16 :goto_17

    .line 141
    :cond_e6
    :sswitch_e6
    const/4 v2, 0x0

    .line 142
    const/4 v8, 0x1

    .line 143
    if-gtz v6, :cond_ee

    if-nez v6, :cond_102

    if-nez v7, :cond_102

    .line 144
    :cond_ee
    const/4 v11, -0x1

    if-ne v7, v11, :cond_f2

    .line 145
    move v7, v6

    .line 147
    :cond_f2
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5, v15, v6}, Ljava/lang/String;-><init>([CII)V

    .line 148
    .local v11, "temp":Ljava/lang/String;
    invoke-virtual {v11, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v11  # "temp":Ljava/lang/String;
    :cond_102
    const/4 v7, -0x1

    .line 151
    const/4 v6, 0x0

    .line 152
    goto/16 :goto_17

    .line 169
    :cond_106
    :goto_106
    invoke-static {v14}, Ljava/lang/Character;->isSpace(C)Z

    move-result v12

    const/4 v13, 0x5

    if-eqz v12, :cond_11e

    .line 170
    if-ne v2, v11, :cond_110

    .line 171
    const/4 v2, 0x5

    .line 174
    :cond_110
    if-eqz v6, :cond_17

    if-eq v6, v7, :cond_17

    if-ne v2, v13, :cond_118

    .line 175
    goto/16 :goto_17

    .line 177
    :cond_118
    const/4 v12, -0x1

    if-ne v7, v12, :cond_11e

    .line 178
    const/4 v2, 0x4

    .line 179
    goto/16 :goto_17

    .line 182
    :cond_11e
    if-eq v2, v13, :cond_122

    if-ne v2, v11, :cond_123

    .line 183
    :cond_122
    const/4 v2, 0x0

    .line 186
    :cond_123
    :goto_123
    const/4 v8, 0x0

    .line 187
    const/4 v11, 0x4

    if-ne v2, v11, :cond_129

    .line 188
    move v7, v6

    .line 189
    const/4 v2, 0x0

    .line 191
    :cond_129
    add-int/lit8 v11, v6, 0x1

    .end local v6  # "offset":I
    .local v11, "offset":I
    aput-char v14, v5, v6

    move v6, v11

    goto/16 :goto_17

    .line 51
    .end local v2  # "mode":I
    .end local v3  # "unicode":I
    .end local v4  # "count":I
    .end local v5  # "buf":[C
    .end local v7  # "keyLength":I
    .end local v8  # "firstChar":Z
    .end local v9  # "br":Ljava/io/BufferedReader;
    .end local v10  # "intVal":I
    .end local v11  # "offset":I
    .end local v14  # "nextChar":C
    :cond_130
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_138
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "properties cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_140
    .sparse-switch
        0xa -> :sswitch_b5
        0xd -> :sswitch_b2
        0x62 -> :sswitch_af
        0x66 -> :sswitch_ac
        0x6e -> :sswitch_a9
        0x72 -> :sswitch_a6
        0x74 -> :sswitch_a3
        0x75 -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_162
    .sparse-switch
        0xa -> :sswitch_e1
        0xd -> :sswitch_e6
        0x21 -> :sswitch_cd
        0x23 -> :sswitch_cd
        0x3a -> :sswitch_c6
        0x3d -> :sswitch_c6
        0x5c -> :sswitch_bf
    .end sparse-switch
.end method

.method public static store(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "writer"  # Ljava/io/Writer;
    .param p2, "comment"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/PropertiesUtils;->storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method private static storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "writer"  # Ljava/io/Writer;
    .param p2, "comment"  # Ljava/lang/String;
    .param p3, "escapeUnicode"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    .line 233
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/PropertiesUtils;->writeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 235
    :cond_5
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 237
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 240
    .local v1, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 241
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 242
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 243
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 244
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 247
    .end local v3  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2a

    .line 248
    :cond_59
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 249
    return-void
.end method

.method private static writeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 12
    .param p0, "writer"  # Ljava/io/Writer;
    .param p1, "comment"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 305
    .local v1, "len":I
    const/4 v2, 0x0

    .line 306
    .local v2, "curIndex":I
    const/4 v3, 0x0

    .line 307
    .local v3, "lastIndex":I
    :goto_b
    const-string v4, "\n"

    if-ge v2, v1, :cond_7c

    .line 308
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 309
    .local v5, "c":C
    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0xff

    if-gt v5, v8, :cond_1f

    if-eq v5, v7, :cond_1f

    if-ne v5, v6, :cond_78

    .line 310
    :cond_1f
    if-eq v3, v2, :cond_28

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    :cond_28
    if-le v5, v8, :cond_48

    .line 312
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "hex":Ljava/lang/String;
    const-string v6, "\\u"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 314
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_44

    .line 315
    const/16 v7, 0x30

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 317
    .end local v6  # "j":I
    :cond_44
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 318
    .end local v4  # "hex":Ljava/lang/String;
    goto :goto_76

    .line 319
    :cond_48
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 320
    if-ne v5, v6, :cond_5b

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_5b

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5b

    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 323
    :cond_5b
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_73

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-eq v4, v6, :cond_76

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x21

    if-eq v4, v6, :cond_76

    .line 324
    :cond_73
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    :cond_76
    :goto_76
    add-int/lit8 v3, v2, 0x1

    .line 328
    :cond_78
    nop

    .end local v5  # "c":C
    add-int/lit8 v2, v2, 0x1

    .line 329
    goto :goto_b

    .line 330
    :cond_7c
    if-eq v3, v2, :cond_85

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    :cond_85
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 332
    return-void
.end method
