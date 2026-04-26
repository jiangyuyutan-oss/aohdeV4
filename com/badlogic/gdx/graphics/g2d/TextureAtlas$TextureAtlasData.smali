.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    }
.end annotation


# instance fields
.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation
.end field

.field final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 260
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 5
    .param p1, "packFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"  # Z

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 260
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 267
    return-void
.end method

.method private static readEntry([Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "entry"  # [Ljava/lang/String;
    .param p1, "line"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 460
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 462
    :cond_f
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 463
    .local v1, "colon":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    return v0

    .line 464
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 465
    const/4 v0, 0x1

    .local v0, "i":I
    add-int/lit8 v3, v1, 0x1

    .line 466
    .local v3, "lastMatch":I
    :goto_26
    const/16 v4, 0x2c

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 467
    .local v4, "comma":I
    if-ne v4, v2, :cond_39

    .line 468
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 469
    return v0

    .line 471
    :cond_39
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v0

    .line 472
    add-int/lit8 v3, v4, 0x1

    .line 473
    const/4 v5, 0x4

    if-ne v0, v5, :cond_49

    return v5

    .line 465
    .end local v4  # "comma":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method


# virtual methods
.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 21
    .param p1, "packFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"  # Z

    .line 270
    move-object/from16 v1, p0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    .line 272
    .local v2, "entry":[Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v3, 0xf

    const v4, 0x3f7d70a4  # 0.99f

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    move-object v3, v0

    .line 273
    .local v3, "pageFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;>;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$1;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "size"

    invoke-virtual {v3, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$2;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$2;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "format"

    invoke-virtual {v3, v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$3;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$3;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "filter"

    invoke-virtual {v3, v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$4;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$4;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "repeat"

    invoke-virtual {v3, v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$5;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$5;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v6, "pma"

    invoke-virtual {v3, v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const/4 v6, 0x1

    new-array v0, v6, [Z

    const/4 v7, 0x0

    aput-boolean v7, v0, v7

    move-object v8, v0

    .line 304
    .local v8, "hasIndexes":[Z
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v9, 0x7f

    invoke-direct {v0, v9, v4}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    move-object v4, v0

    .line 305
    .local v4, "regionFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;>;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$6;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$6;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v9, "xy"

    invoke-virtual {v4, v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$7;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$7;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$8;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$8;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "bounds"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$9;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$9;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "offset"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$10;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$10;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "orig"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "offsets"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$12;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$12;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V

    const-string v5, "rotate"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;

    invoke-direct {v0, v1, v2, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;[Z)V

    const-string v5, "index"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v0, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    .line 364
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_b0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b4} :catch_1f3
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_1ed

    .line 366
    .local v0, "line":Ljava/lang/String;
    :goto_b4
    if-eqz v0, :cond_cd

    :try_start_b6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_cd

    .line 367
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_b4

    .line 434
    .end local v0  # "line":Ljava/lang/String;
    :catchall_c6
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    goto/16 :goto_215

    .line 370
    .restart local v0  # "line":Ljava/lang/String;
    :cond_cd
    :goto_cd
    if-eqz v0, :cond_e7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_da

    goto :goto_e7

    .line 371
    :cond_da
    invoke-static {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->readEntry([Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_e1

    goto :goto_e7

    .line 372
    :cond_e1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e5} :catch_1f3
    .catchall {:try_start_b6 .. :try_end_e5} :catchall_c6

    move-object v0, v9

    goto :goto_cd

    .line 375
    :cond_e7
    :goto_e7
    const/4 v9, 0x0

    .line 376
    .local v9, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    const/4 v10, 0x0

    .local v10, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 378
    .local v11, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    :goto_ea
    if-nez v0, :cond_ff

    .line 434
    .end local v0  # "line":Ljava/lang/String;
    .end local v9  # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v10  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    .end local v11  # "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    nop

    .line 437
    aget-boolean v0, v8, v7

    if-eqz v0, :cond_fe

    .line 438
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;

    invoke-direct {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 448
    :cond_fe
    return-void

    .line 379
    .restart local v0  # "line":Ljava/lang/String;
    .restart local v9  # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v10  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    .restart local v11  # "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    :cond_ff
    :try_start_ff
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_107} :catch_1f3
    .catchall {:try_start_ff .. :try_end_107} :catchall_1ed

    if-nez v12, :cond_110

    .line 380
    const/4 v9, 0x0

    .line 381
    :try_start_10a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10e} :catch_1f3
    .catchall {:try_start_10a .. :try_end_10e} :catchall_c6

    move-object v0, v12

    goto :goto_ea

    .line 382
    :cond_110
    if-nez v9, :cond_13f

    .line 383
    :try_start_112
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-direct {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;-><init>()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_1f3
    .catchall {:try_start_112 .. :try_end_117} :catchall_1ed

    move-object v9, v12

    .line 384
    move-object/from16 v12, p2

    :try_start_11a
    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    iput-object v13, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 386
    :goto_120
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    invoke-static {v2, v13}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->readEntry([Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_131

    .line 390
    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_ea

    .line 387
    :cond_131
    aget-object v13, v2, v7

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;

    .line 388
    .local v13, "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    if-eqz v13, :cond_13e

    invoke-interface {v13, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;->parse(Ljava/lang/Object;)V

    .line 389
    .end local v13  # "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    :cond_13e
    goto :goto_120

    .line 392
    :cond_13f
    move-object/from16 v12, p2

    new-instance v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;-><init>()V

    .line 393
    .local v13, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    iput-object v9, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    .line 395
    if-eqz p3, :cond_152

    iput-boolean v6, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    .line 397
    :cond_152
    :goto_152
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .end local v0  # "line":Ljava/lang/String;
    .local v15, "line":Ljava/lang/String;
    invoke-static {v2, v14}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->readEntry([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 398
    .local v14, "count":I
    if-nez v14, :cond_196

    .line 418
    .end local v14  # "count":I
    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    if-nez v0, :cond_16e

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    if-nez v0, :cond_16e

    .line 419
    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    .line 420
    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    .line 422
    :cond_16e
    if-eqz v10, :cond_18e

    iget v0, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_18e

    .line 423
    const-class v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    .line 424
    const-class v0, [I

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->values:[[I

    .line 425
    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 426
    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 428
    :cond_18e
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 429
    .end local v13  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    move-object v0, v15

    goto/16 :goto_ea

    .line 399
    .restart local v13  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .restart local v14  # "count":I
    :cond_196
    aget-object v0, v2, v7

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;

    move-object/from16 v16, v0

    .line 400
    .local v16, "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    move-object/from16 v6, v16

    .end local v16  # "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    .local v6, "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    if-eqz v6, :cond_1a8

    .line 401
    invoke-interface {v6, v13}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;->parse(Ljava/lang/Object;)V

    goto :goto_1e4

    .line 403
    :cond_1a8
    if-nez v10, :cond_1b8

    .line 404
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v7, 0x8

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move-object v10, v0

    .line 405
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move-object v11, v0

    .line 407
    :cond_1b8
    const/4 v7, 0x0

    aget-object v0, v2, v7

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 408
    new-array v0, v14, [I
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_1c0} :catch_1eb
    .catchall {:try_start_11a .. :try_end_1c0} :catchall_213

    move-object/from16 v16, v0

    .line 409
    .local v16, "entryValues":[I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_1c4
    if-ge v7, v14, :cond_1df

    .line 411
    add-int/lit8 v0, v7, 0x1

    :try_start_1c8
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1ce
    .catch Ljava/lang/NumberFormatException; {:try_start_1c8 .. :try_end_1ce} :catch_1d5
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1ce} :catch_1eb
    .catchall {:try_start_1c8 .. :try_end_1ce} :catchall_213

    move-object/from16 v1, v16

    .end local v16  # "entryValues":[I
    .local v1, "entryValues":[I
    :try_start_1d0
    aput v0, v1, v7
    :try_end_1d2
    .catch Ljava/lang/NumberFormatException; {:try_start_1d0 .. :try_end_1d2} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d2} :catch_1eb
    .catchall {:try_start_1d0 .. :try_end_1d2} :catchall_213

    .line 413
    goto :goto_1d8

    .line 412
    :catch_1d3
    move-exception v0

    goto :goto_1d8

    .end local v1  # "entryValues":[I
    .restart local v16  # "entryValues":[I
    :catch_1d5
    move-exception v0

    move-object/from16 v1, v16

    .line 409
    .end local v16  # "entryValues":[I
    .restart local v1  # "entryValues":[I
    :goto_1d8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    goto :goto_1c4

    .end local v1  # "entryValues":[I
    .restart local v16  # "entryValues":[I
    :cond_1df
    move-object/from16 v1, v16

    .line 415
    .end local v7  # "i":I
    .end local v16  # "entryValues":[I
    .restart local v1  # "entryValues":[I
    :try_start_1e1
    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1eb
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_213

    .line 417
    .end local v1  # "entryValues":[I
    .end local v6  # "field":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;
    .end local v14  # "count":I
    :goto_1e4
    move-object v0, v15

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_152

    .line 431
    .end local v9  # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v10  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    .end local v11  # "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Object;>;"
    .end local v13  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .end local v15  # "line":Ljava/lang/String;
    :catch_1eb
    move-exception v0

    goto :goto_1f6

    .line 434
    :catchall_1ed
    move-exception v0

    move-object/from16 v12, p2

    :goto_1f0
    move-object/from16 v7, p1

    goto :goto_215

    .line 431
    :catch_1f3
    move-exception v0

    move-object/from16 v12, p2

    .line 432
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1f6
    :try_start_1f6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading texture atlas file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_203
    .catchall {:try_start_1f6 .. :try_end_203} :catchall_213

    move-object/from16 v7, p1

    :try_start_205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2  # "entry":[Ljava/lang/String;
    .end local v3  # "pageFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;>;>;"
    .end local v4  # "regionFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;>;>;"
    .end local v5  # "reader":Ljava/io/BufferedReader;
    .end local v8  # "hasIndexes":[Z
    .end local p1  # "packFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2  # "imagesDir":Lcom/badlogic/gdx/files/FileHandle;
    .end local p3  # "flip":Z
    throw v1
    :try_end_211
    .catchall {:try_start_205 .. :try_end_211} :catchall_211

    .line 434
    .end local v0  # "ex":Ljava/lang/Exception;
    .restart local v2  # "entry":[Ljava/lang/String;
    .restart local v3  # "pageFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;>;>;"
    .restart local v4  # "regionFields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;>;>;"
    .restart local v5  # "reader":Ljava/io/BufferedReader;
    .restart local v8  # "hasIndexes":[Z
    .restart local p1  # "packFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2  # "imagesDir":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p3  # "flip":Z
    :catchall_211
    move-exception v0

    goto :goto_215

    :catchall_213
    move-exception v0

    goto :goto_1f0

    :goto_215
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
