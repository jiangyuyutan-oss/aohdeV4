.class public Lcom/jcraft/jogg/SyncState;
.super Ljava/lang/Object;
.source "SyncState.java"


# instance fields
.field bodybytes:I

.field private chksum:[B

.field public data:[B

.field fill:I

.field headerbytes:I

.field private pageseek:Lcom/jcraft/jogg/Page;

.field returned:I

.field storage:I

.field unsynced:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->pageseek:Lcom/jcraft/jogg/Page;

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    return-void
.end method


# virtual methods
.method public buffer(I)I
    .registers 7
    .param p1, "size"  # I

    .line 63
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 64
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 65
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    if-lez v0, :cond_1b

    .line 66
    iget-object v0, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    iget-object v3, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iget v4, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_1b
    iput v1, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 71
    :cond_1d
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_40

    .line 73
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x1000

    .line 74
    .local v0, "newsize":I
    iget-object v2, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    if-eqz v2, :cond_3a

    .line 75
    new-array v2, v0, [B

    .line 76
    .local v2, "foo":[B
    iget-object v3, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iget-object v4, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    array-length v4, v4

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v2, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    .line 78
    .end local v2  # "foo":[B
    goto :goto_3e

    .line 80
    :cond_3a
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    .line 82
    :goto_3e
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    .line 85
    .end local v0  # "newsize":I
    :cond_40
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    return v0
.end method

.method public clear()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferOffset()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    return v0
.end method

.method public getDataOffset()I
    .registers 2

    .line 269
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    return v0
.end method

.method public init()V
    .registers 1

    .line 266
    return-void
.end method

.method public pageout(Lcom/jcraft/jogg/Page;)I
    .registers 5
    .param p1, "og"  # Lcom/jcraft/jogg/Page;

    .line 236
    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/SyncState;->pageseek(Lcom/jcraft/jogg/Page;)I

    move-result v0

    .line 237
    .local v0, "ret":I
    const/4 v1, 0x1

    if-lez v0, :cond_9

    .line 239
    return v1

    .line 241
    :cond_9
    if-nez v0, :cond_d

    .line 243
    const/4 v1, 0x0

    return v1

    .line 247
    :cond_d
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    if-nez v2, :cond_15

    .line 248
    iput v1, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    .line 249
    const/4 v1, -0x1

    return v1

    .line 252
    .end local v0  # "ret":I
    :cond_15
    goto :goto_1
.end method

.method public pageseek(Lcom/jcraft/jogg/Page;)I
    .registers 12
    .param p1, "og"  # Lcom/jcraft/jogg/Page;

    .line 106
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 108
    .local v0, "page":I
    iget v1, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    sub-int/2addr v1, v2

    .line 110
    .local v1, "bytes":I
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    const/16 v3, 0x4f

    const/4 v4, 0x0

    if-nez v2, :cond_86

    .line 112
    const/16 v2, 0x1b

    if-ge v1, v2, :cond_13

    .line 113
    return v4

    .line 116
    :cond_13
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    aget-byte v5, v5, v0

    if-ne v5, v3, :cond_61

    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x67

    if-ne v5, v6, :cond_61

    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v5, v5, v7

    if-ne v5, v6, :cond_61

    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x3

    aget-byte v5, v5, v6

    const/16 v6, 0x53

    if-eq v5, v6, :cond_36

    goto :goto_61

    .line 136
    :cond_36
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x1a

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v2

    .line 137
    .local v5, "_headerbytes":I
    if-ge v1, v5, :cond_42

    .line 138
    return v4

    .line 142
    :cond_42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v7, v0, 0x1a

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    if-ge v2, v6, :cond_5e

    .line 143
    iget v6, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v8, v0, 0x1b

    add-int/2addr v8, v2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    iput v6, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 145
    :cond_5e
    iput v5, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    goto :goto_86

    .line 118
    .end local v2  # "i":I
    .end local v5  # "_headerbytes":I
    :cond_61
    :goto_61
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 119
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "next":I
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_67
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_7c

    .line 124
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    if-ne v5, v3, :cond_79

    .line 125
    add-int/lit8 v3, v0, 0x1

    add-int v2, v3, v4

    .line 126
    goto :goto_7c

    .line 123
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 130
    .end local v4  # "ii":I
    :cond_7c
    :goto_7c
    if-nez v2, :cond_80

    .line 131
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 133
    :cond_80
    iput v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 134
    sub-int v3, v2, v0

    neg-int v3, v3

    return v3

    .line 148
    .end local v2  # "next":I
    :cond_86
    :goto_86
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iget v5, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v2, v5

    if-le v2, v1, :cond_8e

    .line 149
    return v4

    .line 152
    :cond_8e
    iget-object v2, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    monitor-enter v2

    .line 155
    :try_start_91
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x16

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x16

    aput-byte v4, v5, v6

    .line 157
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x17

    aput-byte v4, v5, v6

    .line 158
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x18

    aput-byte v4, v5, v6

    .line 159
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v6, v0, 0x19

    aput-byte v4, v5, v6

    .line 162
    iget-object v5, p0, Lcom/jcraft/jogg/SyncState;->pageseek:Lcom/jcraft/jogg/Page;

    .line 163
    .local v5, "log":Lcom/jcraft/jogg/Page;
    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v6, v5, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 164
    iput v0, v5, Lcom/jcraft/jogg/Page;->header:I

    .line 165
    iget v6, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iput v6, v5, Lcom/jcraft/jogg/Page;->header_len:I

    .line 167
    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v6, v5, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 168
    iget v6, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v6, v0

    iput v6, v5, Lcom/jcraft/jogg/Page;->body:I

    .line 169
    iget v6, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iput v6, v5, Lcom/jcraft/jogg/Page;->body_len:I

    .line 170
    invoke-virtual {v5}, Lcom/jcraft/jogg/Page;->checksum()V

    .line 173
    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    aget-byte v6, v6, v4

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v0, 0x16

    aget-byte v7, v7, v9

    if-ne v6, v7, :cond_131

    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v0, 0x17

    aget-byte v7, v7, v9

    if-ne v6, v7, :cond_131

    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v0, 0x18

    aget-byte v7, v7, v9

    if-ne v6, v7, :cond_131

    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v0, 0x19

    aget-byte v7, v7, v9

    if-eq v6, v7, :cond_103

    goto :goto_131

    .line 196
    .end local v5  # "log":Lcom/jcraft/jogg/Page;
    :cond_103
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_91 .. :try_end_104} :catchall_161

    .line 200
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 202
    if-eqz p1, :cond_11f

    .line 203
    iget-object v2, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v2, p1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 204
    iput v0, p1, Lcom/jcraft/jogg/Page;->header:I

    .line 205
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iput v2, p1, Lcom/jcraft/jogg/Page;->header_len:I

    .line 206
    iget-object v2, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v2, p1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 207
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/jcraft/jogg/Page;->body:I

    .line 208
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iput v2, p1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 211
    :cond_11f
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    .line 212
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    iget v3, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iget v5, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    add-int/2addr v3, v5

    move v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 213
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 214
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    .line 215
    return v1

    .line 177
    .restart local v5  # "log":Lcom/jcraft/jogg/Page;
    :cond_131
    :goto_131
    :try_start_131
    iget-object v6, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v0, 0x16

    invoke-static {v6, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 181
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, "next":I
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_140
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_155

    .line 185
    iget-object v7, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v8, v0, 0x1

    add-int/2addr v8, v6

    aget-byte v7, v7, v8

    if-ne v7, v3, :cond_152

    .line 186
    add-int/lit8 v3, v0, 0x1

    add-int v4, v3, v6

    .line 187
    goto :goto_155

    .line 184
    :cond_152
    add-int/lit8 v6, v6, 0x1

    goto :goto_140

    .line 191
    .end local v6  # "ii":I
    :cond_155
    :goto_155
    if-nez v4, :cond_15a

    .line 192
    iget v3, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    move v4, v3

    .line 193
    :cond_15a
    iput v4, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 194
    sub-int v3, v4, v0

    neg-int v3, v3

    monitor-exit v2

    return v3

    .line 196
    .end local v4  # "next":I
    .end local v5  # "log":Lcom/jcraft/jogg/Page;
    :catchall_161
    move-exception v3

    monitor-exit v2
    :try_end_163
    .catchall {:try_start_131 .. :try_end_163} :catchall_161

    throw v3
.end method

.method public reset()I
    .registers 2

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 258
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 259
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    .line 260
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 261
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    .line 262
    return v0
.end method

.method public wrote(I)I
    .registers 4
    .param p1, "bytes"  # I

    .line 89
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    if-le v0, v1, :cond_9

    .line 90
    const/4 v0, -0x1

    return v0

    .line 91
    :cond_9
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 92
    const/4 v0, 0x0

    return v0
.end method
