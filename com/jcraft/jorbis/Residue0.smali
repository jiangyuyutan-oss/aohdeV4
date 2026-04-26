.class Lcom/jcraft/jorbis/Residue0;
.super Lcom/jcraft/jorbis/FuncResidue;
.source "Residue0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/Residue0$InfoResidue0;,
        Lcom/jcraft/jorbis/Residue0$LookResidue0;
    }
.end annotation


# static fields
.field private static _01inverse_partword:[[[I

.field static _2inverse_partword:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [[[I

    sput-object v0, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    .line 229
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[I

    sput-object v0, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncResidue;-><init>()V

    .line 311
    return-void
.end method

.method static declared-synchronized _01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I
    .registers 26
    .param p0, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p1, "vl"  # Ljava/lang/Object;
    .param p2, "in"  # [[F
    .param p3, "ch"  # I
    .param p4, "decodepart"  # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-class v3, Lcom/jcraft/jorbis/Residue0;

    monitor-enter v3

    .line 162
    :try_start_9
    move-object/from16 v4, p1

    check-cast v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    .line 163
    .local v4, "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    iget-object v5, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 166
    .local v5, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    iget v6, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    .line 167
    .local v6, "samples_per_partition":I
    iget-object v7, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget v7, v7, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 168
    .local v7, "partitions_per_word":I
    iget v8, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    iget v9, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    sub-int/2addr v8, v9

    .line 170
    .local v8, "n":I
    div-int v9, v8, v6

    .line 171
    .local v9, "partvals":I
    add-int v10, v9, v7

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    .line 173
    .local v10, "partwords":I
    sget-object v12, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    array-length v12, v12

    if-ge v12, v1, :cond_2a

    .line 174
    new-array v12, v1, [[[I

    sput-object v12, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    .line 177
    :cond_2a
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2b
    if-ge v12, v1, :cond_43

    .line 178
    sget-object v13, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v13, v13, v12

    if-eqz v13, :cond_3a

    sget-object v13, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v13, v13, v12

    array-length v13, v13

    if-ge v13, v10, :cond_40

    .line 179
    :cond_3a
    sget-object v13, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    new-array v14, v10, [[I

    aput-object v14, v13, v12

    .line 177
    :cond_40
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 183
    :cond_43
    const/4 v13, 0x0

    .local v13, "s":I
    :goto_44
    iget v14, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    if-ge v13, v14, :cond_118

    .line 186
    const/4 v14, 0x0

    .local v14, "i":I
    const/16 v16, 0x0

    .local v16, "l":I
    :goto_4b
    if-ge v14, v9, :cond_10b

    .line 187
    if-nez v13, :cond_7f

    .line 189
    const/4 v12, 0x0

    :goto_50
    if-ge v12, v1, :cond_7c

    .line 190
    iget-object v15, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget-object v11, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v15, v11}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v11
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_11b

    .line 191
    .local v11, "temp":I
    const/4 v15, -0x1

    if-ne v11, v15, :cond_60

    .line 192
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    .line 194
    :cond_60
    :try_start_60
    sget-object v15, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v15, v15, v12

    move/from16 v18, v8

    .end local v8  # "n":I
    .local v18, "n":I
    iget-object v8, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v8, v8, v11

    aput-object v8, v15, v16

    .line 195
    sget-object v8, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v8, v8, v12

    aget-object v8, v8, v16
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_11b

    if-nez v8, :cond_77

    .line 196
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    .line 189
    .end local v11  # "temp":I
    :cond_77
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v18

    goto :goto_50

    .end local v18  # "n":I
    .restart local v8  # "n":I
    :cond_7c
    move/from16 v18, v8

    .end local v8  # "n":I
    .restart local v18  # "n":I
    goto :goto_81

    .line 187
    .end local v18  # "n":I
    .restart local v8  # "n":I
    :cond_7f
    move/from16 v18, v8

    .line 202
    .end local v8  # "n":I
    .restart local v18  # "n":I
    :goto_81
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_82
    if-ge v8, v7, :cond_fa

    if-ge v14, v9, :cond_fa

    .line 203
    const/4 v11, 0x0

    move v12, v11

    :goto_88
    if-ge v12, v1, :cond_ec

    .line 204
    :try_start_8a
    iget v11, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    mul-int v15, v14, v6

    add-int/2addr v11, v15

    .line 205
    .local v11, "offset":I
    sget-object v15, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v15, v15, v12

    aget-object v15, v15, v16

    aget v15, v15, v8

    .line 206
    .local v15, "index":I
    iget-object v1, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v1, v1, v15

    const/16 v17, 0x1

    shl-int v19, v17, v13

    and-int v1, v1, v19

    if-eqz v1, :cond_de

    .line 207
    iget-object v1, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    move-object/from16 v19, v5

    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .local v19, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    iget-object v5, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v5, v5, v15

    aget v5, v5, v13

    aget-object v1, v1, v5

    .line 208
    .local v1, "stagebook":Lcom/jcraft/jorbis/CodeBook;
    if-eqz v1, :cond_da

    .line 209
    if-nez v2, :cond_c5

    .line 210
    aget-object v5, p2, v12

    move-object/from16 v20, v4

    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .local v20, "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v5, v11, v4, v6}, Lcom/jcraft/jorbis/CodeBook;->decodevs_add([FILcom/jcraft/jogg/Buffer;I)I

    move-result v4
    :try_end_bd
    .catchall {:try_start_8a .. :try_end_bd} :catchall_11b

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c3

    .line 212
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    .line 210
    :cond_c3
    const/4 v5, -0x1

    goto :goto_e3

    .line 215
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    :cond_c5
    move-object/from16 v20, v4

    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_d8

    .line 216
    :try_start_ca
    aget-object v5, p2, v12

    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v5, v11, v4, v6}, Lcom/jcraft/jorbis/CodeBook;->decodev_add([FILcom/jcraft/jogg/Buffer;I)I

    move-result v4
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_11b

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e3

    .line 218
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    .line 215
    :cond_d8
    const/4 v5, -0x1

    goto :goto_e3

    .line 208
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    :cond_da
    move-object/from16 v20, v4

    const/4 v5, -0x1

    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    goto :goto_e3

    .line 206
    .end local v1  # "stagebook":Lcom/jcraft/jorbis/CodeBook;
    .end local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    :cond_de
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    const/4 v5, -0x1

    .line 203
    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v11  # "offset":I
    .end local v15  # "index":I
    .restart local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    :cond_e3
    :goto_e3
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p3

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_88

    .line 202
    .end local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    :cond_ec
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    const/4 v5, -0x1

    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    move-object/from16 v5, v19

    goto :goto_82

    .end local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    :cond_fa
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    .line 186
    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    add-int/lit8 v16, v16, 0x1

    move/from16 v1, p3

    move/from16 v8, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    const/4 v11, 0x1

    goto/16 :goto_4b

    .line 183
    .end local v18  # "n":I
    .end local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .local v8, "n":I
    :cond_10b
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move/from16 v18, v8

    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v8  # "n":I
    .restart local v18  # "n":I
    .restart local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    const/4 v11, 0x1

    goto/16 :goto_44

    .line 226
    .end local v14  # "i":I
    .end local v16  # "l":I
    .end local v18  # "n":I
    .end local v19  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v20  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .restart local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .restart local v8  # "n":I
    :cond_118
    monitor-exit v3

    const/4 v1, 0x0

    return v1

    .line 161
    .end local v4  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v5  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v6  # "samples_per_partition":I
    .end local v7  # "partitions_per_word":I
    .end local v8  # "n":I
    .end local v9  # "partvals":I
    .end local v10  # "partwords":I
    .end local v12  # "j":I
    .end local v13  # "s":I
    .end local p0  # "vb":Lcom/jcraft/jorbis/Block;
    .end local p1  # "vl":Ljava/lang/Object;
    .end local p2  # "in":[[F
    .end local p3  # "ch":I
    .end local p4  # "decodepart":I
    :catchall_11b
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized _2inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FI)I
    .registers 28
    .param p0, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p1, "vl"  # Ljava/lang/Object;
    .param p2, "in"  # [[F
    .param p3, "ch"  # I

    move-object/from16 v0, p0

    const-class v1, Lcom/jcraft/jorbis/Residue0;

    monitor-enter v1

    .line 233
    :try_start_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    .line 234
    .local v2, "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    iget-object v3, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 237
    .local v3, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    iget v4, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    .line 238
    .local v4, "samples_per_partition":I
    iget-object v5, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget v5, v5, Lcom/jcraft/jorbis/CodeBook;->dim:I

    move v11, v5

    .line 239
    .local v11, "partitions_per_word":I
    iget v5, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    iget v6, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    sub-int v12, v5, v6

    .line 241
    .local v12, "n":I
    div-int v5, v12, v4

    move v13, v5

    .line 242
    .local v13, "partvals":I
    add-int v5, v13, v11

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    div-int/2addr v5, v11

    move v15, v5

    .line 244
    .local v15, "partwords":I
    sget-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    array-length v5, v5

    if-ge v5, v15, :cond_2e

    .line 245
    :cond_2a
    new-array v5, v15, [[I

    sput-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    .line 247
    :cond_2e
    const/4 v5, 0x0

    move v10, v5

    .local v10, "s":I
    :goto_30
    iget v5, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    const/16 v16, 0x0

    if-ge v10, v5, :cond_d3

    .line 248
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    move/from16 v17, v6

    .local v17, "l":I
    :goto_3a
    if-ge v5, v13, :cond_cc

    .line 249
    const/4 v9, -0x1

    if-nez v10, :cond_5b

    .line 251
    iget-object v6, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget-object v7, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v6, v7}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v6
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_d5

    .line 252
    .local v6, "temp":I
    if-ne v6, v9, :cond_4b

    .line 253
    monitor-exit v1

    return v16

    .line 255
    :cond_4b
    :try_start_4b
    sget-object v7, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    iget-object v8, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v8, v8, v6

    aput-object v8, v7, v17

    .line 256
    sget-object v7, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    aget-object v7, v7, v17
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_d5

    if-nez v7, :cond_5b

    .line 257
    monitor-exit v1

    return v16

    .line 262
    .end local v6  # "temp":I
    :cond_5b
    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    .end local v5  # "i":I
    .local v7, "k":I
    .local v8, "i":I
    :goto_5e
    if-ge v7, v11, :cond_bd

    if-ge v8, v13, :cond_bd

    .line 263
    :try_start_62
    iget v5, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    mul-int v6, v8, v4

    add-int v18, v5, v6

    .line 264
    .local v18, "offset":I
    sget-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    aget-object v5, v5, v17

    aget v5, v5, v7

    move/from16 v19, v5

    .line 265
    .local v19, "index":I
    iget-object v5, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v5, v5, v19

    shl-int v6, v14, v10

    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    .line 266
    iget-object v5, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v6, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v6, v6, v19

    aget v6, v6, v10

    aget-object v5, v5, v6

    move-object/from16 v20, v5

    .line 267
    .local v20, "stagebook":Lcom/jcraft/jorbis/CodeBook;
    if-eqz v20, :cond_a5

    .line 268
    iget-object v6, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    move-object/from16 v5, v20

    move-object/from16 v21, v6

    move-object/from16 v6, p2

    move/from16 v22, v7

    .end local v7  # "k":I
    .local v22, "k":I
    move/from16 v7, v18

    move/from16 v23, v8

    .end local v8  # "i":I
    .local v23, "i":I
    move/from16 v8, p3

    move v14, v9

    move-object/from16 v9, v21

    move/from16 v21, v10

    .end local v10  # "s":I
    .local v21, "s":I
    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/jcraft/jorbis/CodeBook;->decodevv_add([[FIILcom/jcraft/jogg/Buffer;I)I

    move-result v5
    :try_end_a1
    .catchall {:try_start_62 .. :try_end_a1} :catchall_d5

    if-ne v5, v14, :cond_b4

    .line 270
    monitor-exit v1

    return v16

    .line 267
    .end local v21  # "s":I
    .end local v22  # "k":I
    .end local v23  # "i":I
    .restart local v7  # "k":I
    .restart local v8  # "i":I
    .restart local v10  # "s":I
    :cond_a5
    move/from16 v22, v7

    move/from16 v23, v8

    move v14, v9

    move/from16 v21, v10

    .end local v7  # "k":I
    .end local v8  # "i":I
    .end local v10  # "s":I
    .restart local v21  # "s":I
    .restart local v22  # "k":I
    .restart local v23  # "i":I
    goto :goto_b4

    .line 265
    .end local v20  # "stagebook":Lcom/jcraft/jorbis/CodeBook;
    .end local v21  # "s":I
    .end local v22  # "k":I
    .end local v23  # "i":I
    .restart local v7  # "k":I
    .restart local v8  # "i":I
    .restart local v10  # "s":I
    :cond_ad
    move/from16 v22, v7

    move/from16 v23, v8

    move v14, v9

    move/from16 v21, v10

    .line 262
    .end local v7  # "k":I
    .end local v8  # "i":I
    .end local v10  # "s":I
    .end local v18  # "offset":I
    .end local v19  # "index":I
    .restart local v21  # "s":I
    .restart local v22  # "k":I
    .restart local v23  # "i":I
    :cond_b4
    :goto_b4
    add-int/lit8 v7, v22, 0x1

    .end local v22  # "k":I
    .restart local v7  # "k":I
    add-int/lit8 v8, v23, 0x1

    move v9, v14

    move/from16 v10, v21

    const/4 v14, 0x1

    .end local v23  # "i":I
    .restart local v8  # "i":I
    goto :goto_5e

    .end local v21  # "s":I
    .restart local v10  # "s":I
    :cond_bd
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v21, v10

    .line 248
    .end local v7  # "k":I
    .end local v8  # "i":I
    .end local v10  # "s":I
    .restart local v21  # "s":I
    .restart local v22  # "k":I
    .restart local v23  # "i":I
    add-int/lit8 v17, v17, 0x1

    move/from16 v10, v21

    move/from16 v5, v23

    const/4 v14, 0x1

    goto/16 :goto_3a

    .line 247
    .end local v21  # "s":I
    .end local v22  # "k":I
    .end local v23  # "i":I
    .restart local v5  # "i":I
    .restart local v10  # "s":I
    :cond_cc
    move/from16 v21, v10

    .end local v10  # "s":I
    .restart local v21  # "s":I
    add-int/lit8 v10, v21, 0x1

    const/4 v14, 0x1

    .end local v21  # "s":I
    .restart local v10  # "s":I
    goto/16 :goto_30

    .line 277
    .end local v5  # "i":I
    .end local v17  # "l":I
    :cond_d3
    monitor-exit v1

    return v16

    .line 232
    .end local v2  # "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    .end local v3  # "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    .end local v4  # "samples_per_partition":I
    .end local v10  # "s":I
    .end local v11  # "partitions_per_word":I
    .end local v12  # "n":I
    .end local v13  # "partvals":I
    .end local v15  # "partwords":I
    .end local p0  # "vb":Lcom/jcraft/jorbis/Block;
    .end local p1  # "vl":Ljava/lang/Object;
    .end local p2  # "in":[[F
    .end local p3  # "ch":I
    :catchall_d5
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method free_info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 151
    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 154
    return-void
.end method

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
    .registers 10
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "vl"  # Ljava/lang/Object;
    .param p3, "in"  # [[F
    .param p4, "nonzero"  # [I
    .param p5, "ch"  # I

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "used":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p5, :cond_12

    .line 283
    aget v2, p4, v1

    if-eqz v2, :cond_f

    .line 284
    add-int/lit8 v2, v0, 0x1

    .end local v0  # "used":I
    .local v2, "used":I
    aget-object v3, p3, v1

    aput-object v3, p3, v0

    move v0, v2

    .line 282
    .end local v2  # "used":I
    .restart local v0  # "used":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 287
    .end local v1  # "i":I
    :cond_12
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 288
    invoke-static {p1, p2, p3, v0, v1}, Lcom/jcraft/jorbis/Residue0;->_01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I

    move-result v1

    return v1

    .line 290
    :cond_1a
    return v1
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;
    .param p2, "vm"  # Lcom/jcraft/jorbis/InfoMode;
    .param p3, "vr"  # Ljava/lang/Object;

    .line 101
    move-object v0, p3

    check-cast v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 102
    .local v0, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    new-instance v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    invoke-direct {v1, p0}, Lcom/jcraft/jorbis/Residue0$LookResidue0;-><init>(Lcom/jcraft/jorbis/Residue0;)V

    .line 103
    .local v1, "look":Lcom/jcraft/jorbis/Residue0$LookResidue0;
    const/4 v2, 0x0

    .line 105
    .local v2, "acc":I
    const/4 v3, 0x0

    .line 106
    .local v3, "maxstage":I
    iput-object v0, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 107
    iget v4, p2, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    iput v4, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->map:I

    .line 109
    iget v4, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    iput v4, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    .line 110
    iget-object v4, p1, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iput-object v4, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    .line 111
    iget-object v4, p1, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget v5, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    aget-object v4, v4, v5

    iput-object v4, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    .line 113
    iget-object v4, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget v4, v4, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 115
    .local v4, "dim":I
    iget v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    new-array v5, v5, [[I

    iput-object v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    .line 117
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2b
    iget v6, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    if-ge v5, v6, :cond_5d

    .line 118
    iget-object v6, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v6, v6, v5

    .line 119
    .local v6, "i":I
    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v7

    .line 120
    .local v7, "stages":I
    if-eqz v7, :cond_5a

    .line 121
    if-le v7, v3, :cond_3c

    .line 122
    move v3, v7

    .line 123
    :cond_3c
    iget-object v8, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    new-array v9, v7, [I

    aput-object v9, v8, v5

    .line 124
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_43
    if-ge v8, v7, :cond_5a

    .line 125
    const/4 v9, 0x1

    shl-int/2addr v9, v8

    and-int/2addr v9, v6

    if-eqz v9, :cond_57

    .line 126
    iget-object v9, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v9, v9, v5

    iget-object v10, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    add-int/lit8 v11, v2, 0x1

    .end local v2  # "acc":I
    .local v11, "acc":I
    aget v2, v10, v2

    aput v2, v9, v8

    move v2, v11

    .line 124
    .end local v11  # "acc":I
    .restart local v2  # "acc":I
    :cond_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 117
    .end local v6  # "i":I
    .end local v7  # "stages":I
    .end local v8  # "k":I
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 132
    .end local v5  # "j":I
    :cond_5d
    iget v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    int-to-double v5, v5

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    .line 133
    iput v3, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    .line 134
    iget v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    new-array v5, v5, [[I

    iput-object v5, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    .line 135
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_75
    iget v6, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    if-ge v5, v6, :cond_9c

    .line 136
    move v6, v5

    .line 137
    .local v6, "val":I
    iget v7, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    iget v8, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    div-int/2addr v7, v8

    .line 138
    .local v7, "mult":I
    iget-object v8, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    new-array v9, v4, [I

    aput-object v9, v8, v5

    .line 140
    const/4 v8, 0x0

    .restart local v8  # "k":I
    :goto_86
    if-ge v8, v4, :cond_99

    .line 141
    div-int v9, v6, v7

    .line 142
    .local v9, "deco":I
    mul-int v10, v9, v7

    sub-int/2addr v6, v10

    .line 143
    iget v10, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    div-int/2addr v7, v10

    .line 144
    iget-object v10, v1, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v10, v10, v5

    aput v9, v10, v8

    .line 140
    .end local v9  # "deco":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    .line 135
    .end local v6  # "val":I
    .end local v7  # "mult":I
    .end local v8  # "k":I
    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 147
    .end local v5  # "j":I
    :cond_9c
    return-object v1
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 11
    .param p1, "vr"  # Ljava/lang/Object;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 34
    .local v0, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    const/4 v1, 0x0

    .line 35
    .local v1, "acc":I
    iget v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    const/16 v3, 0x18

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 36
    iget v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 38
    iget v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 40
    iget v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    sub-int/2addr v2, v4

    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 41
    iget v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    const/16 v3, 0x8

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 46
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_26
    iget v5, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    if-ge v2, v5, :cond_4e

    .line 47
    iget-object v5, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v5, v5, v2

    .line 48
    .local v5, "i":I
    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_42

    .line 50
    invoke-virtual {p2, v5, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 51
    invoke-virtual {p2, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 52
    ushr-int/lit8 v6, v5, 0x3

    const/4 v7, 0x5

    invoke-virtual {p2, v6, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_46

    .line 55
    :cond_42
    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 57
    :goto_46
    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->icount(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 46
    .end local v5  # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 59
    .end local v2  # "j":I
    :cond_4e
    const/4 v2, 0x0

    .restart local v2  # "j":I
    :goto_4f
    if-ge v2, v1, :cond_5b

    .line 60
    iget-object v4, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    aget v4, v4, v2

    invoke-virtual {p2, v4, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 62
    .end local v2  # "j":I
    :cond_5b
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 11
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "acc":I
    new-instance v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    invoke-direct {v1, p0}, Lcom/jcraft/jorbis/Residue0$InfoResidue0;-><init>(Lcom/jcraft/jorbis/Residue0;)V

    .line 67
    .local v1, "info":Lcom/jcraft/jorbis/Residue0$InfoResidue0;
    const/16 v2, 0x18

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    .line 68
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    .line 69
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    .line 70
    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    .line 71
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    iput v4, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    .line 73
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2d
    iget v5, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    if-ge v4, v5, :cond_50

    .line 74
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    .line 75
    .local v6, "cascade":I
    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    if-eqz v7, :cond_44

    .line 76
    const/4 v7, 0x5

    invoke-virtual {p2, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    shl-int/lit8 v5, v7, 0x3

    or-int/2addr v6, v5

    .line 78
    :cond_44
    iget-object v5, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aput v6, v5, v4

    .line 79
    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->icount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 73
    .end local v6  # "cascade":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 82
    .end local v4  # "j":I
    :cond_50
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_51
    if-ge v3, v0, :cond_5e

    .line 83
    iget-object v4, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    aput v5, v4, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 86
    .end local v3  # "j":I
    :cond_5e
    iget v2, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    iget v3, p1, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_69

    .line 87
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/Residue0;->free_info(Ljava/lang/Object;)V

    .line 88
    return-object v4

    .line 91
    :cond_69
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_6a
    if-ge v2, v0, :cond_7b

    .line 92
    iget-object v3, v1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    aget v3, v3, v2

    iget v5, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v3, v5, :cond_78

    .line 93
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/Residue0;->free_info(Ljava/lang/Object;)V

    .line 94
    return-object v4

    .line 91
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 97
    .end local v2  # "j":I
    :cond_7b
    return-object v1
.end method
