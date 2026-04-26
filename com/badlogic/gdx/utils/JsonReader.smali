.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 575
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 582
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 594
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 601
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 608
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 615
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 627
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    .line 635
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 643
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 650
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 663
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "child"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 668
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_c

    .line 670
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 671
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4a

    .line 672
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_22

    .line 684
    :cond_1d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4a

    .line 673
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_31

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3d

    .line 677
    :cond_31
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    .line 678
    .local v0, "last":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 679
    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 681
    .end local v0  # "last":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 685
    :goto_4a
    return-void
.end method

.method private static init__json_actions_0()[B
    .registers 1

    .line 572
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .registers 1

    .line 646
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .registers 1

    .line 611
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .registers 1

    .line 618
    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1dt
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x22t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x37t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3ct
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .registers 1

    .line 578
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .registers 1

    .line 604
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .registers 1

    .line 597
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .registers 1

    .line 638
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .registers 1

    .line 585
    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .registers 1

    .line 630
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "value"  # Ljava/lang/String;

    .line 726
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 727
    .local v0, "length":I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 728
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_72

    .line 729
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 730
    .local v2, "c":C
    const/16 v4, 0x5c

    if-eq v2, v4, :cond_1d

    .line 731
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 732
    move v2, v3

    goto :goto_c

    .line 734
    :cond_1d
    if-ne v3, v0, :cond_20

    goto :goto_72

    .line 735
    :cond_20
    add-int/lit8 v4, v3, 0x1

    .end local v3  # "i":I
    .local v4, "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 736
    const/16 v3, 0x75

    if-ne v2, v3, :cond_41

    .line 737
    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 738
    add-int/lit8 v3, v4, 0x4

    .line 739
    .end local v4  # "i":I
    .restart local v3  # "i":I
    move v2, v3

    goto :goto_c

    .line 741
    .end local v3  # "i":I
    .restart local v4  # "i":I
    :cond_41
    sparse-switch v2, :sswitch_data_78

    .line 762
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal escaped character: \\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    :sswitch_5d
    const/16 v2, 0x9

    .line 760
    goto :goto_6d

    .line 756
    :sswitch_60
    const/16 v2, 0xd

    .line 757
    goto :goto_6d

    .line 753
    :sswitch_63
    const/16 v2, 0xa

    .line 754
    goto :goto_6d

    .line 750
    :sswitch_66
    const/16 v2, 0xc

    .line 751
    goto :goto_6d

    .line 747
    :sswitch_69
    const/16 v2, 0x8

    .line 748
    goto :goto_6d

    .line 745
    :sswitch_6c
    nop

    .line 764
    :goto_6d
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 765
    .end local v2  # "c":C
    move v2, v4

    goto :goto_c

    .line 766
    .end local v4  # "i":I
    :cond_72
    :goto_72
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_78
    .sparse-switch
        0x22 -> :sswitch_6c
        0x2f -> :sswitch_6c
        0x5c -> :sswitch_6c
        0x62 -> :sswitch_69
        0x66 -> :sswitch_66
        0x6e -> :sswitch_63
        0x72 -> :sswitch_60
        0x74 -> :sswitch_5d
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Z

    .line 722
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 723
    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # D
    .param p4, "stringValue"  # Ljava/lang/String;

    .line 714
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 715
    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # J
    .param p4, "stringValue"  # Ljava/lang/String;

    .line 718
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 719
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 7
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 77
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_26

    .line 80
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 82
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return-object v1

    .line 83
    :catch_c
    move-exception v1

    .line 84
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v0  # "reader":Ljava/io/Reader;
    .end local v1  # "ex":Ljava/lang/Exception;
    :catch_26
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "input"  # Ljava/io/InputStream;

    .line 67
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d

    .line 70
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 71
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    return-object v1

    .line 68
    .end local v0  # "reader":Ljava/io/Reader;
    :catch_d
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error reading stream."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 8
    .param p1, "reader"  # Ljava/io/Reader;

    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 44
    .local v0, "data":[C
    const/4 v1, 0x0

    .line 47
    .local v1, "offset":I
    :goto_5
    :try_start_5
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_29
    .catchall {:try_start_5 .. :try_end_b} :catchall_27

    .line 48
    .local v2, "length":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_18

    .line 59
    .end local v2  # "length":I
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    nop

    .line 61
    invoke-virtual {p0, v0, v4, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    return-object v2

    .line 49
    .restart local v2  # "length":I
    :cond_18
    if-nez v2, :cond_25

    .line 50
    :try_start_1a
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 51
    .local v3, "newData":[C
    array-length v5, v0

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_29
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    .line 52
    move-object v0, v3

    .line 53
    .end local v3  # "newData":[C
    goto :goto_26

    .line 54
    :cond_25
    add-int/2addr v1, v2

    .line 55
    .end local v2  # "length":I
    :goto_26
    goto :goto_5

    .line 59
    :catchall_27
    move-exception v2

    goto :goto_32

    .line 56
    :catch_29
    move-exception v2

    .line 57
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2a
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v4, "Error reading input."

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "data":[C
    .end local v1  # "offset":I
    .end local p1  # "reader":Ljava/io/Reader;
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    .line 59
    .end local v2  # "ex":Ljava/io/IOException;
    .restart local v0  # "data":[C
    .restart local v1  # "offset":I
    .restart local p1  # "reader":Ljava/io/Reader;
    :goto_32
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "json"  # Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 39
    .local v0, "data":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 46
    .param p1, "data"  # [C
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .local v0, "p":I
    move/from16 v3, p3

    .local v3, "pe":I
    move v4, v3

    .local v4, "eof":I
    const/4 v5, 0x0

    .line 90
    .local v5, "top":I
    const/4 v6, 0x4

    new-array v6, v6, [I

    .line 92
    .local v6, "stack":[I
    const/4 v7, 0x0

    .line 93
    .local v7, "s":I
    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 94
    .local v8, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "needsUnescape":Z
    const/4 v10, 0x0

    .local v10, "stringIsName":Z
    const/4 v11, 0x0

    .line 95
    .local v11, "stringIsUnquoted":Z
    const/4 v12, 0x0

    .line 97
    .local v12, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    .line 98
    .local v13, "debug":Z
    if-eqz v13, :cond_21

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    .line 104
    :cond_21
    const/4 v14, 0x1

    .line 105
    .local v14, "cs":I
    const/4 v5, 0x0

    .line 111
    const/4 v15, 0x0

    .line 115
    .local v15, "_trans":I
    const/16 v16, 0x0

    move/from16 v41, v5

    move v5, v0

    move v0, v14

    move v14, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move-object v7, v6

    move/from16 v6, v41

    .line 119
    .local v0, "cs":I
    .local v5, "p":I
    .local v6, "top":I
    .local v7, "stack":[I
    .local v9, "s":I
    .local v10, "needsUnescape":Z
    .local v11, "stringIsName":Z
    .local v14, "stringIsUnquoted":Z
    .local v16, "_goto_targ":I
    :goto_31
    move/from16 v17, v9

    .end local v9  # "s":I
    .local v17, "s":I
    const-string v9, "=false"

    move/from16 v18, v10

    .end local v10  # "needsUnescape":Z
    .local v18, "needsUnescape":Z
    const-string v10, "=true"

    move/from16 v19, v11

    .end local v11  # "stringIsName":Z
    .local v19, "stringIsName":Z
    const-string v11, "null"

    move-object/from16 v20, v12

    .end local v12  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v20, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const-string v12, "string: "

    move/from16 v21, v14

    .end local v14  # "stringIsUnquoted":Z
    .local v21, "stringIsUnquoted":Z
    const-string v14, "false"

    move/from16 v22, v15

    .end local v15  # "_trans":I
    .local v22, "_trans":I
    const-string v15, "name: "

    move-object/from16 v23, v12

    const-string v12, "true"

    move-object/from16 v24, v11

    const-string v11, "double: "

    move-object/from16 v25, v11

    const-string v11, "boolean: "

    move-object/from16 v26, v9

    const-string v9, "="

    move-object/from16 v27, v9

    const/4 v9, 0x1

    packed-switch v16, :pswitch_data_cf0

    :pswitch_5f  #0x3
    move/from16 v33, v0

    move/from16 v31, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    .end local v0  # "cs":I
    .end local v3  # "pe":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v27, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v31, "pe":I
    .local v33, "cs":I
    .local v34, "stack":[I
    .local v35, "eof":I
    .local v36, "top":I
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_c1d

    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31  # "pe":I
    .end local v33  # "cs":I
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .restart local v0  # "cs":I
    .restart local v3  # "pe":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :pswitch_77  #0x4
    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object v6, v10

    move-object/from16 v40, v11

    move/from16 v10, v18

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move v4, v0

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_8ce

    :pswitch_95  #0x2
    move/from16 v30, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object v6, v10

    move-object/from16 v40, v11

    move/from16 v10, v18

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_8a3

    .line 121
    :pswitch_b4  #0x0
    if-ne v5, v3, :cond_c6

    .line 122
    const/16 v16, 0x4

    .line 123
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_31

    .line 125
    :cond_c6
    if-nez v0, :cond_d8

    .line 126
    const/16 v16, 0x5

    .line 127
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_31

    .line 132
    :cond_d8
    :pswitch_d8  #0x1
    :try_start_d8
    sget-object v28, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v28, v28, v0

    .line 133
    .local v28, "_keys":I
    sget-object v29, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v29, v29, v0

    move/from16 v22, v29

    .line 134
    sget-object v29, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v29, v29, v0
    :try_end_e6
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_e6} :catch_c08

    .line 135
    .local v29, "_klen":I
    if-lez v29, :cond_13a

    .line 136
    move/from16 v30, v28

    .line 138
    .local v30, "_lower":I
    add-int v31, v28, v29

    add-int/lit8 v31, v31, -0x1

    move/from16 v9, v30

    move/from16 v30, v3

    move/from16 v3, v31

    .line 140
    .local v3, "_upper":I
    .local v9, "_lower":I
    .local v30, "pe":I
    :goto_f4
    if-ge v3, v9, :cond_fb

    .line 152
    add-int v28, v28, v29

    .line 153
    add-int v22, v22, v29

    goto :goto_13c

    .line 142
    :cond_fb
    sub-int v31, v3, v9

    const/16 v32, 0x1

    shr-int/lit8 v31, v31, 0x1

    add-int v31, v9, v31

    .line 143
    .local v31, "_mid":I
    move/from16 v33, v3

    .end local v3  # "_upper":I
    .local v33, "_upper":I
    :try_start_105
    aget-char v3, v2, v5

    sget-object v34, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v35, v9

    .end local v9  # "_lower":I
    .local v35, "_lower":I
    aget-char v9, v34, v31

    if-ge v3, v9, :cond_114

    .line 144
    add-int/lit8 v3, v31, -0x1

    move/from16 v9, v35

    .end local v33  # "_upper":I
    .restart local v3  # "_upper":I
    goto :goto_f4

    .line 145
    .end local v3  # "_upper":I
    .restart local v33  # "_upper":I
    :cond_114
    aget-char v3, v2, v5

    sget-object v9, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v9, v9, v31
    :try_end_11a
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_11a} :catch_129

    if-le v3, v9, :cond_121

    .line 146
    add-int/lit8 v9, v31, 0x1

    move/from16 v3, v33

    .end local v35  # "_lower":I
    .restart local v9  # "_lower":I
    goto :goto_f4

    .line 148
    .end local v9  # "_lower":I
    .restart local v35  # "_lower":I
    :cond_121
    sub-int v3, v31, v28

    add-int v22, v22, v3

    .line 149
    move/from16 v33, v0

    goto/16 :goto_188

    .line 541
    .end local v0  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v31  # "_mid":I
    .end local v33  # "_upper":I
    .end local v35  # "_lower":I
    :catch_129
    move-exception v0

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .line 135
    .end local v30  # "pe":I
    .restart local v0  # "cs":I
    .local v3, "pe":I
    .restart local v16  # "_goto_targ":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    :cond_13a
    move/from16 v30, v3

    .line 156
    .end local v3  # "pe":I
    .restart local v30  # "pe":I
    :goto_13c
    :try_start_13c
    sget-object v3, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v3, v3, v0
    :try_end_140
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_140} :catch_bf4

    move/from16 v29, v3

    .line 157
    if-lez v29, :cond_186

    .line 158
    move/from16 v3, v28

    .line 160
    .local v3, "_lower":I
    shl-int/lit8 v9, v29, 0x1

    add-int v9, v28, v9

    add-int/lit8 v9, v9, -0x2

    .line 162
    .local v9, "_upper":I
    :goto_14c
    if-ge v9, v3, :cond_153

    .line 174
    add-int v22, v22, v29

    move/from16 v33, v0

    goto :goto_188

    .line 164
    :cond_153
    sub-int v31, v9, v3

    const/16 v32, 0x1

    shr-int/lit8 v31, v31, 0x1

    and-int/lit8 v31, v31, -0x2

    add-int v31, v3, v31

    .line 165
    .restart local v31  # "_mid":I
    move/from16 v33, v0

    .end local v0  # "cs":I
    .local v33, "cs":I
    :try_start_15f
    aget-char v0, v2, v5

    sget-object v34, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v35, v3

    .end local v3  # "_lower":I
    .restart local v35  # "_lower":I
    aget-char v3, v34, v31

    if-ge v0, v3, :cond_170

    .line 166
    add-int/lit8 v9, v31, -0x2

    move/from16 v0, v33

    move/from16 v3, v35

    goto :goto_14c

    .line 167
    :cond_170
    aget-char v0, v2, v5

    sget-object v3, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v34, v31, 0x1

    aget-char v3, v3, v34
    :try_end_178
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_178} :catch_129

    if-le v0, v3, :cond_17f

    .line 168
    add-int/lit8 v3, v31, 0x2

    move/from16 v0, v33

    .end local v35  # "_lower":I
    .restart local v3  # "_lower":I
    goto :goto_14c

    .line 170
    .end local v3  # "_lower":I
    .restart local v35  # "_lower":I
    :cond_17f
    sub-int v0, v31, v28

    const/4 v3, 0x1

    shr-int/2addr v0, v3

    add-int v22, v22, v0

    .line 171
    goto :goto_188

    .line 157
    .end local v9  # "_upper":I
    .end local v31  # "_mid":I
    .end local v33  # "cs":I
    .end local v35  # "_lower":I
    .restart local v0  # "cs":I
    :cond_186
    move/from16 v33, v0

    .line 178
    .end local v0  # "cs":I
    .restart local v33  # "cs":I
    :goto_188
    :try_start_188
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v0, v0, v22

    move v3, v0

    .line 179
    .end local v22  # "_trans":I
    .local v3, "_trans":I
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v0, v0, v3

    move v9, v0

    .line 181
    .end local v33  # "cs":I
    .local v9, "cs":I
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v3
    :try_end_196
    .catch Ljava/lang/RuntimeException; {:try_start_188 .. :try_end_196} :catch_bf4

    if-eqz v0, :cond_882

    .line 182
    :try_start_198
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v3

    .line 183
    .local v0, "_acts":I
    sget-object v22, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v31, v0, 0x1

    .end local v0  # "_acts":I
    .local v31, "_acts":I
    aget-byte v0, v22, v0
    :try_end_1a2
    .catch Ljava/lang/RuntimeException; {:try_start_198 .. :try_end_1a2} :catch_86d

    move/from16 v22, v3

    move/from16 v3, v17

    .line 184
    .end local v17  # "s":I
    .local v0, "_nacts":I
    .local v3, "s":I
    .restart local v22  # "_trans":I
    :goto_1a6
    add-int/lit8 v17, v0, -0x1

    .end local v0  # "_nacts":I
    .local v17, "_nacts":I
    if-lez v0, :cond_849

    .line 185
    :try_start_1aa
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v33, v31, 0x1

    .end local v31  # "_acts":I
    .local v33, "_acts":I
    aget-byte v0, v0, v31
    :try_end_1b0
    .catch Ljava/lang/RuntimeException; {:try_start_1aa .. :try_end_1b0} :catch_832

    move-object/from16 v34, v14

    packed-switch v0, :pswitch_data_cfe

    move/from16 v38, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v37, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v27, v15

    move-object/from16 v7, v23

    .end local v3  # "s":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .local v35, "eof":I
    .restart local v36  # "top":I
    .local v37, "cs":I
    .local v38, "s":I
    goto/16 :goto_815

    .line 411
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .end local v37  # "cs":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    :pswitch_1d0  #0x8
    if-eqz v13, :cond_1d9

    :try_start_1d2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "quotedChars"

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1d2 .. :try_end_1d9} :catch_227

    .line 412
    :cond_1d9
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 413
    const/4 v0, 0x0

    .end local v18  # "needsUnescape":Z
    .local v0, "needsUnescape":Z
    move v14, v0

    .line 416
    .end local v0  # "needsUnescape":Z
    .local v14, "needsUnescape":Z
    :cond_1de
    :try_start_1de
    aget-char v0, v2, v5
    :try_end_1e0
    .catch Ljava/lang/RuntimeException; {:try_start_1de .. :try_end_1e0} :catch_20e

    sparse-switch v0, :sswitch_data_d14

    goto :goto_1eb

    .line 418
    :sswitch_1e4
    const/4 v14, 0x1

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    goto :goto_1eb

    .line 422
    :sswitch_1e8
    move/from16 v18, v14

    goto :goto_1f3

    .line 425
    :goto_1eb
    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 426
    if-ne v5, v4, :cond_1de

    move/from16 v18, v14

    .line 428
    .end local v14  # "needsUnescape":Z
    .restart local v18  # "needsUnescape":Z
    :goto_1f3
    add-int/lit8 v5, v5, -0x1

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v37, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v27, v15

    move-object/from16 v7, v23

    goto/16 :goto_815

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v18  # "needsUnescape":Z
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .restart local v14  # "needsUnescape":Z
    :catch_20e
    move-exception v0

    move v9, v3

    move/from16 v35, v4

    move-object/from16 v27, v8

    move v10, v14

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .line 354
    .end local v14  # "needsUnescape":Z
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v18  # "needsUnescape":Z
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :pswitch_21d  #0x7
    if-eqz v13, :cond_237

    :try_start_21f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "unquotedChars"

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_226
    .catch Ljava/lang/RuntimeException; {:try_start_21f .. :try_end_226} :catch_227

    goto :goto_237

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_227
    move-exception v0

    move v9, v3

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .line 355
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_237
    :goto_237
    move v3, v5

    .line 356
    const/4 v0, 0x0

    .line 357
    .end local v18  # "needsUnescape":Z
    .restart local v0  # "needsUnescape":Z
    const/4 v14, 0x1

    .line 358
    .end local v21  # "stringIsUnquoted":Z
    .local v14, "stringIsUnquoted":Z
    move/from16 v18, v0

    .end local v0  # "needsUnescape":Z
    .restart local v18  # "needsUnescape":Z
    const-string v0, "\'"

    if-eqz v19, :cond_2dd

    .line 361
    :goto_240
    :try_start_240
    aget-char v21, v2, v5
    :try_end_242
    .catch Ljava/lang/RuntimeException; {:try_start_240 .. :try_end_242} :catch_2ca

    sparse-switch v21, :sswitch_data_d1e

    move/from16 v36, v3

    move/from16 v21, v14

    .end local v3  # "s":I
    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    .local v36, "s":I
    goto :goto_284

    .line 363
    .end local v21  # "stringIsUnquoted":Z
    .end local v36  # "s":I
    .restart local v3  # "s":I
    .restart local v14  # "stringIsUnquoted":Z
    :sswitch_24a
    const/16 v18, 0x1

    .line 364
    move/from16 v36, v3

    move/from16 v21, v14

    goto :goto_284

    .line 366
    :sswitch_251
    move/from16 v36, v3

    .end local v3  # "s":I
    .restart local v36  # "s":I
    add-int/lit8 v3, v5, 0x1

    if-ne v3, v4, :cond_25a

    move/from16 v21, v14

    goto :goto_284

    .line 367
    :cond_25a
    add-int/lit8 v3, v5, 0x1

    :try_start_25c
    aget-char v3, v2, v3
    :try_end_25e
    .catch Ljava/lang/RuntimeException; {:try_start_25c .. :try_end_25e} :catch_269

    .line 368
    .local v3, "c":C
    move/from16 v21, v14

    const/16 v14, 0x2f

    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    if-eq v3, v14, :cond_27e

    const/16 v14, 0x2a

    if-ne v3, v14, :cond_284

    goto :goto_27e

    .line 541
    .end local v3  # "c":C
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v21  # "stringIsUnquoted":Z
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .restart local v14  # "stringIsUnquoted":Z
    :catch_269
    move-exception v0

    move/from16 v21, v14

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v31, v30

    move/from16 v9, v36

    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    goto/16 :goto_c1b

    .line 373
    .end local v21  # "stringIsUnquoted":Z
    .end local v36  # "s":I
    .local v3, "s":I
    .restart local v9  # "cs":I
    .restart local v14  # "stringIsUnquoted":Z
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :sswitch_27a
    move/from16 v36, v3

    move/from16 v21, v14

    .line 403
    .end local v3  # "s":I
    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    .restart local v36  # "s":I
    :cond_27e
    :goto_27e
    move-object/from16 v37, v10

    move/from16 v10, v18

    goto/16 :goto_33d

    .line 375
    :cond_284
    :goto_284
    if-eqz v13, :cond_2b8

    :try_start_286
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v10

    const-string v10, "unquotedChar (name): \'"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-char v14, v2, v5

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2a6
    .catch Ljava/lang/RuntimeException; {:try_start_286 .. :try_end_2a6} :catch_2a7

    goto :goto_2ba

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_2a7
    move-exception v0

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v9, v36

    goto/16 :goto_c1b

    .line 375
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_2b8
    move-object/from16 v37, v10

    .line 376
    :goto_2ba
    add-int/lit8 v5, v5, 0x1

    .line 377
    if-ne v5, v4, :cond_2c2

    move/from16 v10, v18

    goto/16 :goto_33d

    :cond_2c2
    move/from16 v14, v21

    move/from16 v3, v36

    move-object/from16 v10, v37

    goto/16 :goto_240

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v21  # "stringIsUnquoted":Z
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v36  # "s":I
    .restart local v3  # "s":I
    .restart local v14  # "stringIsUnquoted":Z
    :catch_2ca
    move-exception v0

    move/from16 v36, v3

    move/from16 v21, v14

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v31, v30

    move/from16 v9, v36

    .end local v3  # "s":I
    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    .restart local v36  # "s":I
    goto/16 :goto_c1b

    .line 358
    .end local v21  # "stringIsUnquoted":Z
    .end local v36  # "s":I
    .restart local v3  # "s":I
    .restart local v9  # "cs":I
    .restart local v14  # "stringIsUnquoted":Z
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_2dd
    move/from16 v36, v3

    move-object/from16 v37, v10

    move/from16 v21, v14

    .end local v3  # "s":I
    .end local v14  # "stringIsUnquoted":Z
    .restart local v21  # "stringIsUnquoted":Z
    .restart local v36  # "s":I
    move/from16 v10, v18

    .line 382
    .end local v18  # "needsUnescape":Z
    .restart local v10  # "needsUnescape":Z
    :cond_2e5
    :try_start_2e5
    aget-char v3, v2, v5

    sparse-switch v3, :sswitch_data_d34

    goto :goto_301

    .line 384
    :sswitch_2eb
    const/4 v3, 0x1

    .line 385
    .end local v10  # "needsUnescape":Z
    .local v3, "needsUnescape":Z
    move v10, v3

    goto :goto_301

    .line 387
    .end local v3  # "needsUnescape":Z
    .restart local v10  # "needsUnescape":Z
    :sswitch_2ee
    add-int/lit8 v3, v5, 0x1

    if-ne v3, v4, :cond_2f3

    goto :goto_301

    .line 388
    :cond_2f3
    add-int/lit8 v3, v5, 0x1

    aget-char v3, v2, v3
    :try_end_2f7
    .catch Ljava/lang/RuntimeException; {:try_start_2e5 .. :try_end_2f7} :catch_368

    .line 389
    .local v3, "c":C
    const/16 v14, 0x2f

    if-eq v3, v14, :cond_33d

    const/16 v14, 0x2a

    if-ne v3, v14, :cond_301

    goto :goto_33d

    .line 396
    .end local v3  # "c":C
    :sswitch_300
    goto :goto_33d

    .line 398
    :cond_301
    :goto_301
    if-eqz v13, :cond_335

    :try_start_303
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_30a
    .catch Ljava/lang/RuntimeException; {:try_start_303 .. :try_end_30a} :catch_324

    move/from16 v18, v10

    .end local v10  # "needsUnescape":Z
    .restart local v18  # "needsUnescape":Z
    :try_start_30c
    const-string v10, "unquotedChar (value): \'"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-char v14, v2, v5

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_323
    .catch Ljava/lang/RuntimeException; {:try_start_30c .. :try_end_323} :catch_2a7

    goto :goto_337

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v18  # "needsUnescape":Z
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .restart local v10  # "needsUnescape":Z
    :catch_324
    move-exception v0

    move/from16 v18, v10

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v9, v36

    .end local v10  # "needsUnescape":Z
    .restart local v18  # "needsUnescape":Z
    goto/16 :goto_c1b

    .line 398
    .end local v18  # "needsUnescape":Z
    .restart local v9  # "cs":I
    .restart local v10  # "needsUnescape":Z
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_335
    move/from16 v18, v10

    .line 399
    .end local v10  # "needsUnescape":Z
    .restart local v18  # "needsUnescape":Z
    :goto_337
    add-int/lit8 v5, v5, 0x1

    .line 400
    move/from16 v10, v18

    if-ne v5, v4, :cond_2e5

    .line 403
    .end local v18  # "needsUnescape":Z
    .restart local v10  # "needsUnescape":Z
    :cond_33d
    :goto_33d
    add-int/lit8 v5, v5, -0x1

    .line 404
    :goto_33f
    :try_start_33f
    aget-char v0, v2, v5

    invoke-static {v0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0
    :try_end_345
    .catch Ljava/lang/RuntimeException; {:try_start_33f .. :try_end_345} :catch_368

    if-eqz v0, :cond_34a

    .line 405
    add-int/lit8 v5, v5, -0x1

    goto :goto_33f

    .line 404
    :cond_34a
    move/from16 v35, v4

    move/from16 v18, v10

    move-object/from16 v40, v11

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move/from16 v3, v36

    move/from16 v36, v6

    move-object/from16 v27, v15

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v7, v23

    goto/16 :goto_815

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_368
    move-exception v0

    move/from16 v35, v4

    move-object/from16 v27, v8

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v9, v36

    goto/16 :goto_c1b

    .line 338
    .end local v10  # "needsUnescape":Z
    .end local v36  # "s":I
    .local v3, "s":I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v18  # "needsUnescape":Z
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :pswitch_377  #0x6
    move-object/from16 v37, v10

    add-int/lit8 v0, v5, -0x1

    .line 339
    .local v0, "start":I
    add-int/lit8 v10, v5, 0x1

    .end local v5  # "p":I
    .local v10, "p":I
    :try_start_37d
    aget-char v5, v2, v5
    :try_end_37f
    .catch Ljava/lang/RuntimeException; {:try_start_37d .. :try_end_37f} :catch_402

    const/16 v14, 0x2f

    if-ne v5, v14, :cond_392

    move v5, v10

    .line 340
    .end local v10  # "p":I
    .restart local v5  # "p":I
    :goto_384
    if-eq v5, v4, :cond_38f

    :try_start_386
    aget-char v10, v2, v5

    const/16 v14, 0xa

    if-eq v10, v14, :cond_38f

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_384

    .line 342
    :cond_38f
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b0

    .line 339
    .end local v5  # "p":I
    .restart local v10  # "p":I
    :cond_392
    move v5, v10

    .line 344
    .end local v10  # "p":I
    .restart local v5  # "p":I
    :goto_393
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v4, :cond_3a1

    aget-char v10, v2, v5
    :try_end_399
    .catch Ljava/lang/RuntimeException; {:try_start_386 .. :try_end_399} :catch_227

    const/16 v14, 0x2a

    if-ne v10, v14, :cond_39e

    goto :goto_3a3

    :cond_39e
    const/16 v14, 0x2f

    goto :goto_3ab

    :cond_3a1
    const/16 v14, 0x2a

    :goto_3a3
    add-int/lit8 v10, v5, 0x1

    :try_start_3a5
    aget-char v10, v2, v10

    const/16 v14, 0x2f

    if-eq v10, v14, :cond_3ae

    .line 345
    :goto_3ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_393

    .line 346
    :cond_3ae
    add-int/lit8 v5, v5, 0x1

    .line 348
    :goto_3b0
    if-eqz v13, :cond_3d6

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3b9
    .catch Ljava/lang/RuntimeException; {:try_start_3a5 .. :try_end_3b9} :catch_3f2

    move/from16 v35, v4

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    :try_start_3bb
    const-string v4, "comment "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v14, Ljava/lang/String;

    move-object/from16 v36, v11

    sub-int v11, v5, v0

    invoke-direct {v14, v2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3da

    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    :cond_3d6
    move/from16 v35, v4

    move-object/from16 v36, v11

    .line 350
    .end local v0  # "start":I
    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    :goto_3da
    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v40, v36

    move/from16 v36, v6

    move-object/from16 v27, v15

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v7, v23

    goto/16 :goto_815

    .line 541
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    :catch_3f2
    move-exception v0

    move/from16 v35, v4

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    goto/16 :goto_c1b

    .end local v5  # "p":I
    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    .restart local v10  # "p":I
    :catch_402
    move-exception v0

    move/from16 v35, v4

    move v9, v3

    move-object/from16 v27, v8

    move v5, v10

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    goto/16 :goto_c1b

    .line 326
    .end local v10  # "p":I
    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    .restart local v5  # "p":I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :pswitch_413  #0x5
    move/from16 v35, v4

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    if-eqz v13, :cond_41e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "endArray"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    :cond_41e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 329
    add-int/lit8 v6, v6, -0x1

    aget v0, v7, v6

    .line 330
    .end local v9  # "cs":I
    .local v0, "cs":I
    const/16 v16, 0x2

    .line 331
    move v9, v3

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v3, v30

    move/from16 v4, v35

    goto/16 :goto_31

    .line 305
    .end local v0  # "cs":I
    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    .restart local v9  # "cs":I
    :pswitch_438  #0x4
    move/from16 v35, v4

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_445

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_446

    :cond_445
    const/4 v0, 0x0

    .line 306
    .local v0, "name":Ljava/lang/String;
    :goto_446
    if-eqz v13, :cond_460

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startArray: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_460
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 309
    array-length v4, v7

    if-ne v6, v4, :cond_471

    .line 310
    array-length v4, v7

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 311
    .local v4, "newStack":[I
    array-length v10, v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_470
    .catch Ljava/lang/RuntimeException; {:try_start_3bb .. :try_end_470} :catch_513

    .line 312
    move-object v7, v4

    .line 315
    .end local v4  # "newStack":[I
    :cond_471
    add-int/lit8 v4, v6, 0x1

    .end local v6  # "top":I
    .local v4, "top":I
    :try_start_473
    aput v9, v7, v6
    :try_end_475
    .catch Ljava/lang/RuntimeException; {:try_start_473 .. :try_end_475} :catch_504

    .line 316
    const/16 v6, 0x17

    .line 317
    .end local v9  # "cs":I
    .local v6, "cs":I
    const/16 v16, 0x2

    .line 318
    move v9, v3

    move v0, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v3, v30

    move v6, v4

    move/from16 v4, v35

    goto/16 :goto_31

    .line 293
    .end local v0  # "name":Ljava/lang/String;
    .end local v35  # "eof":I
    .local v4, "eof":I
    .local v6, "top":I
    .restart local v9  # "cs":I
    :pswitch_48c  #0x3
    move/from16 v35, v4

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    if-eqz v13, :cond_497

    :try_start_490
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "endObject"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    :cond_497
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 296
    add-int/lit8 v6, v6, -0x1

    aget v0, v7, v6

    .line 297
    .end local v9  # "cs":I
    .local v0, "cs":I
    const/16 v16, 0x2

    .line 298
    move v9, v3

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v3, v30

    move/from16 v4, v35

    goto/16 :goto_31

    .line 272
    .end local v0  # "cs":I
    .end local v35  # "eof":I
    .restart local v4  # "eof":I
    .restart local v9  # "cs":I
    :pswitch_4b1  #0x2
    move/from16 v35, v4

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_4be

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4bf

    :cond_4be
    const/4 v0, 0x0

    .line 273
    .local v0, "name":Ljava/lang/String;
    :goto_4bf
    if-eqz v13, :cond_4d9

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startObject: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_4d9
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 276
    array-length v4, v7

    if-ne v6, v4, :cond_4ea

    .line 277
    array-length v4, v7

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 278
    .local v4, "newStack":[I
    array-length v10, v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4e9
    .catch Ljava/lang/RuntimeException; {:try_start_490 .. :try_end_4e9} :catch_513

    .line 279
    move-object v7, v4

    .line 282
    .end local v4  # "newStack":[I
    :cond_4ea
    add-int/lit8 v4, v6, 0x1

    .end local v6  # "top":I
    .local v4, "top":I
    :try_start_4ec
    aput v9, v7, v6
    :try_end_4ee
    .catch Ljava/lang/RuntimeException; {:try_start_4ec .. :try_end_4ee} :catch_504

    .line 283
    const/4 v6, 0x5

    .line 284
    .end local v9  # "cs":I
    .local v6, "cs":I
    const/16 v16, 0x2

    .line 285
    move v9, v3

    move v0, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v3, v30

    move v6, v4

    move/from16 v4, v35

    goto/16 :goto_31

    .line 541
    .end local v0  # "name":Ljava/lang/String;
    .end local v6  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_504
    move-exception v0

    move v9, v3

    move v6, v4

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .end local v4  # "top":I
    .local v6, "top":I
    :catch_513
    move-exception v0

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .line 195
    .end local v35  # "eof":I
    .local v4, "eof":I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :pswitch_521  #0x1
    move/from16 v35, v4

    move-object/from16 v37, v10

    move-object/from16 v36, v11

    .end local v4  # "eof":I
    .restart local v35  # "eof":I
    :try_start_527
    new-instance v0, Ljava/lang/String;

    sub-int v4, v5, v3

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_52e
    .catch Ljava/lang/RuntimeException; {:try_start_527 .. :try_end_52e} :catch_7e4

    .line 196
    .local v0, "value":Ljava/lang/String;
    if-eqz v18, :cond_536

    :try_start_530
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_534
    .catch Ljava/lang/RuntimeException; {:try_start_530 .. :try_end_534} :catch_513

    move-object v0, v4

    goto :goto_537

    :cond_536
    move-object v4, v0

    .line 198
    .end local v0  # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_537
    if-eqz v19, :cond_57d

    .line 199
    const/4 v11, 0x0

    .line 200
    .end local v19  # "stringIsName":Z
    .restart local v11  # "stringIsName":Z
    if-eqz v13, :cond_552

    :try_start_53c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_552
    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_555
    .catch Ljava/lang/RuntimeException; {:try_start_53c .. :try_end_555} :catch_571

    move/from16 v38, v3

    move/from16 v19, v11

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v40, v36

    move/from16 v36, v6

    move-object/from16 v27, v15

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v7, v23

    goto/16 :goto_7cd

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v9  # "cs":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_571
    move-exception v0

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v14, v21

    move/from16 v31, v30

    goto/16 :goto_c1b

    .line 203
    .end local v11  # "stringIsName":Z
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v19  # "stringIsName":Z
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_57d
    :try_start_57d
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_57f
    .catch Ljava/lang/RuntimeException; {:try_start_57d .. :try_end_57f} :catch_7e4

    if-lez v0, :cond_588

    :try_start_581
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_587
    .catch Ljava/lang/RuntimeException; {:try_start_581 .. :try_end_587} :catch_513

    goto :goto_589

    :cond_588
    const/4 v0, 0x0

    :goto_589
    move-object v10, v0

    .line 204
    .local v10, "name":Ljava/lang/String;
    if-eqz v21, :cond_78f

    .line 205
    :try_start_58c
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_590
    .catch Ljava/lang/RuntimeException; {:try_start_58c .. :try_end_590} :catch_7e4

    if-eqz v0, :cond_5f5

    .line 206
    if-eqz v13, :cond_5c5

    :try_start_594
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v36

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_5a5
    .catch Ljava/lang/RuntimeException; {:try_start_594 .. :try_end_5a5} :catch_5b5

    move/from16 v36, v6

    move-object/from16 v6, v37

    .end local v6  # "top":I
    .local v36, "top":I
    :try_start_5a9
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5cb

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v9  # "cs":I
    .end local v10  # "name":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v36  # "top":I
    .restart local v6  # "top":I
    :catch_5b5
    move-exception v0

    move/from16 v36, v6

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    .end local v6  # "top":I
    .restart local v36  # "top":I
    goto/16 :goto_c1b

    .line 206
    .end local v36  # "top":I
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v6  # "top":I
    .restart local v9  # "cs":I
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_5c5
    move-object/from16 v14, v36

    move/from16 v36, v6

    move-object/from16 v6, v37

    .line 207
    .end local v6  # "top":I
    .restart local v36  # "top":I
    :goto_5cb
    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_5cf
    .catch Ljava/lang/RuntimeException; {:try_start_5a9 .. :try_end_5cf} :catch_5e5

    .line 208
    move/from16 v38, v3

    move/from16 v37, v9

    move-object/from16 v40, v14

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v27, v15

    move-object/from16 v7, v23

    goto/16 :goto_7cd

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v9  # "cs":I
    .end local v10  # "name":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    :catch_5e5
    move-exception v0

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v6, v36

    goto/16 :goto_c1b

    .line 209
    .end local v36  # "top":I
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v6  # "top":I
    .restart local v9  # "cs":I
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_5f5
    move-object/from16 v14, v36

    move/from16 v36, v6

    move-object/from16 v6, v37

    .end local v6  # "top":I
    .restart local v36  # "top":I
    move-object/from16 v11, v34

    :try_start_5fd
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_601
    .catch Ljava/lang/RuntimeException; {:try_start_5fd .. :try_end_601} :catch_77a

    if-eqz v0, :cond_666

    .line 210
    if-eqz v13, :cond_638

    :try_start_605
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_607
    .catch Ljava/lang/RuntimeException; {:try_start_605 .. :try_end_607} :catch_626

    move-object/from16 v34, v7

    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    :try_start_609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v37, v9

    move-object/from16 v9, v26

    .end local v9  # "cs":I
    .restart local v37  # "cs":I
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_63e

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v10  # "name":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v34  # "stack":[I
    .end local v37  # "cs":I
    .restart local v7  # "stack":[I
    :catch_626
    move-exception v0

    move-object/from16 v34, v7

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v6, v36

    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    goto/16 :goto_c1b

    .line 210
    .end local v34  # "stack":[I
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_638
    move-object/from16 v34, v7

    move/from16 v37, v9

    move-object/from16 v9, v26

    .line 211
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .restart local v37  # "cs":I
    :goto_63e
    const/4 v7, 0x0

    invoke-virtual {v1, v10, v7}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_642
    .catch Ljava/lang/RuntimeException; {:try_start_609 .. :try_end_642} :catch_654

    .line 212
    move/from16 v38, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v15

    goto/16 :goto_7cd

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v10  # "name":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v37  # "cs":I
    :catch_654
    move-exception v0

    move v9, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    goto/16 :goto_c1b

    .line 213
    .end local v34  # "stack":[I
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_666
    move-object/from16 v34, v7

    move/from16 v37, v9

    move-object/from16 v9, v26

    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .restart local v37  # "cs":I
    move-object/from16 v7, v24

    :try_start_66e
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_672
    .catch Ljava/lang/RuntimeException; {:try_start_66e .. :try_end_672} :catch_765

    if-eqz v0, :cond_68c

    .line 214
    move-object/from16 v24, v7

    const/4 v7, 0x0

    :try_start_677
    invoke-virtual {v1, v10, v7}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move/from16 v38, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v15

    goto/16 :goto_7cd

    .line 217
    :cond_68c
    move-object/from16 v24, v7

    const/4 v0, 0x0

    .local v0, "couldBeDouble":Z
    const/4 v7, 0x1

    .line 219
    .local v7, "couldBeLong":Z
    move/from16 v26, v3

    move/from16 v41, v26

    move/from16 v26, v0

    move/from16 v0, v41

    .local v0, "i":I
    .local v26, "couldBeDouble":Z
    :goto_698
    if-ge v0, v5, :cond_6ab

    .line 220
    aget-char v31, v2, v0
    :try_end_69c
    .catch Ljava/lang/RuntimeException; {:try_start_677 .. :try_end_69c} :catch_654

    sparse-switch v31, :sswitch_data_d52

    .line 241
    const/16 v26, 0x0

    .line 242
    const/4 v7, 0x0

    .line 243
    goto :goto_6ab

    .line 237
    :sswitch_6a3
    const/16 v26, 0x1

    .line 238
    const/4 v7, 0x0

    .line 239
    goto :goto_6a8

    .line 233
    :sswitch_6a7
    nop

    .line 219
    :goto_6a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_698

    .line 246
    .end local v0  # "i":I
    :cond_6ab
    :goto_6ab
    if-eqz v26, :cond_724

    .line 248
    if-eqz v13, :cond_708

    :try_start_6af
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_6b1
    .catch Ljava/lang/NumberFormatException; {:try_start_6af .. :try_end_6b1} :catch_6f8
    .catch Ljava/lang/RuntimeException; {:try_start_6af .. :try_end_6b1} :catch_765

    move/from16 v38, v3

    .end local v3  # "s":I
    .restart local v38  # "s":I
    :try_start_6b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6b8
    .catch Ljava/lang/NumberFormatException; {:try_start_6b3 .. :try_end_6b8} :catch_6ea
    .catch Ljava/lang/RuntimeException; {:try_start_6b3 .. :try_end_6b8} :catch_7d1

    move-object/from16 v39, v9

    move-object/from16 v9, v25

    :try_start_6bc
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_6c4
    .catch Ljava/lang/NumberFormatException; {:try_start_6bc .. :try_end_6c4} :catch_6e4
    .catch Ljava/lang/RuntimeException; {:try_start_6bc .. :try_end_6c4} :catch_7d1

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    :try_start_6c8
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_6cc
    .catch Ljava/lang/NumberFormatException; {:try_start_6c8 .. :try_end_6cc} :catch_6e0
    .catch Ljava/lang/RuntimeException; {:try_start_6c8 .. :try_end_6cc} :catch_7d1

    move-object/from16 v40, v14

    move-object/from16 v27, v15

    :try_start_6d0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_716

    .line 251
    :catch_6e0
    move-exception v0

    move-object/from16 v40, v14

    goto :goto_6f5

    :catch_6e4
    move-exception v0

    move-object/from16 v25, v11

    move-object/from16 v40, v14

    goto :goto_6f3

    :catch_6ea
    move-exception v0

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    :goto_6f3
    move-object/from16 v11, v27

    :goto_6f5
    move-object/from16 v27, v15

    goto :goto_722

    .end local v38  # "s":I
    .restart local v3  # "s":I
    :catch_6f8
    move-exception v0

    move/from16 v38, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v15

    .end local v3  # "s":I
    .restart local v38  # "s":I
    goto :goto_722

    .line 248
    .end local v38  # "s":I
    .restart local v3  # "s":I
    :cond_708
    move/from16 v38, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v15

    .line 249
    .end local v3  # "s":I
    .restart local v38  # "s":I
    :goto_716
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v1, v10, v14, v15, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_71d
    .catch Ljava/lang/NumberFormatException; {:try_start_6d0 .. :try_end_71d} :catch_721
    .catch Ljava/lang/RuntimeException; {:try_start_6d0 .. :try_end_71d} :catch_7d1

    .line 250
    move-object/from16 v7, v23

    goto/16 :goto_7cd

    .line 251
    :catch_721
    move-exception v0

    .line 252
    :goto_722
    goto/16 :goto_7a5

    .line 253
    .end local v38  # "s":I
    .restart local v3  # "s":I
    :cond_724
    move/from16 v38, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v14

    move-object/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v15

    .end local v3  # "s":I
    .restart local v38  # "s":I
    if-eqz v7, :cond_7a5

    .line 254
    if-eqz v13, :cond_758

    :try_start_736
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_758
    .catch Ljava/lang/RuntimeException; {:try_start_736 .. :try_end_758} :catch_7d1

    .line 256
    :cond_758
    :try_start_758
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v1, v10, v14, v15, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_75f
    .catch Ljava/lang/NumberFormatException; {:try_start_758 .. :try_end_75f} :catch_763
    .catch Ljava/lang/RuntimeException; {:try_start_758 .. :try_end_75f} :catch_7d1

    .line 257
    move-object/from16 v7, v23

    goto/16 :goto_7cd

    .line 258
    :catch_763
    move-exception v0

    goto :goto_7a5

    .line 541
    .end local v4  # "value":Ljava/lang/String;
    .end local v7  # "couldBeLong":Z
    .end local v10  # "name":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v26  # "couldBeDouble":Z
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v37  # "cs":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    :catch_765
    move-exception v0

    move/from16 v38, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    move/from16 v9, v38

    .end local v3  # "s":I
    .restart local v38  # "s":I
    goto/16 :goto_c1b

    .end local v34  # "stack":[I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .local v7, "stack":[I
    :catch_77a
    move-exception v0

    move/from16 v38, v3

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v6, v36

    move/from16 v9, v38

    .end local v3  # "s":I
    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    .restart local v38  # "s":I
    goto/16 :goto_c1b

    .line 204
    .end local v34  # "stack":[I
    .end local v36  # "top":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .restart local v4  # "value":Ljava/lang/String;
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :cond_78f
    move/from16 v38, v3

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v40, v36

    move/from16 v36, v6

    move-object/from16 v27, v15

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    .line 262
    .end local v3  # "s":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .restart local v36  # "top":I
    .restart local v37  # "cs":I
    .restart local v38  # "s":I
    :cond_7a5
    :goto_7a5
    if-eqz v13, :cond_7c8

    :try_start_7a7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v23

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7ca

    :cond_7c8
    move-object/from16 v7, v23

    .line 263
    :goto_7ca
    invoke-virtual {v1, v10, v4}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7cd
    .catch Ljava/lang/RuntimeException; {:try_start_7a7 .. :try_end_7cd} :catch_7d1

    .line 265
    .end local v10  # "name":Ljava/lang/String;
    :goto_7cd
    const/16 v21, 0x0

    .line 266
    move v3, v5

    .line 268
    .end local v4  # "value":Ljava/lang/String;
    .end local v38  # "s":I
    .restart local v3  # "s":I
    goto :goto_815

    .line 541
    .end local v3  # "s":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v37  # "cs":I
    .restart local v38  # "s":I
    :catch_7d1
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    move/from16 v9, v38

    goto/16 :goto_c1b

    .end local v34  # "stack":[I
    .end local v36  # "top":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    :catch_7e4
    move-exception v0

    move/from16 v38, v3

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v9, v38

    .end local v3  # "s":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    .restart local v36  # "top":I
    .restart local v38  # "s":I
    goto/16 :goto_c1b

    .line 189
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .local v4, "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v33  # "_acts":I
    :pswitch_7f9  #0x0
    move/from16 v38, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v37, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v34

    move-object/from16 v34, v7

    move-object/from16 v27, v15

    move-object/from16 v7, v23

    .end local v3  # "s":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    .restart local v37  # "cs":I
    .restart local v38  # "s":I
    const/16 v19, 0x1

    .line 191
    nop

    .line 430
    .end local v38  # "s":I
    .restart local v3  # "s":I
    :goto_815
    move-object v10, v6

    move-object/from16 v23, v7

    move/from16 v0, v17

    move-object/from16 v14, v25

    move-object/from16 v15, v27

    move/from16 v31, v33

    move-object/from16 v7, v34

    move/from16 v4, v35

    move/from16 v6, v36

    move-object/from16 v26, v39

    move-object/from16 v25, v9

    move-object/from16 v27, v11

    move/from16 v9, v37

    move-object/from16 v11, v40

    goto/16 :goto_1a6

    .line 541
    .end local v16  # "_goto_targ":I
    .end local v17  # "_nacts":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v33  # "_acts":I
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .end local v37  # "cs":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    :catch_832
    move-exception v0

    move/from16 v38, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    move/from16 v9, v38

    .end local v3  # "s":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    .restart local v38  # "s":I
    goto/16 :goto_c1b

    .line 184
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .end local v38  # "s":I
    .restart local v3  # "s":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "_nacts":I
    .restart local v22  # "_trans":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    .restart local v31  # "_acts":I
    :cond_849
    move/from16 v38, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move/from16 v37, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    .end local v3  # "s":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    .restart local v37  # "cs":I
    .restart local v38  # "s":I
    move/from16 v10, v18

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v0, v37

    move/from16 v17, v38

    goto :goto_8a3

    .line 541
    .end local v16  # "_goto_targ":I
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v31  # "_acts":I
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .end local v37  # "cs":I
    .end local v38  # "s":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .local v17, "s":I
    :catch_86d
    move-exception v0

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v31, v30

    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    goto/16 :goto_c1b

    .line 181
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .local v3, "_trans":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v9  # "cs":I
    .restart local v16  # "_goto_targ":I
    .restart local v28  # "_keys":I
    .restart local v29  # "_klen":I
    :cond_882
    move/from16 v22, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move/from16 v37, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v7, v23

    move-object/from16 v9, v25

    move-object/from16 v39, v26

    move-object/from16 v11, v27

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    .end local v3  # "_trans":I
    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v9  # "cs":I
    .restart local v22  # "_trans":I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    .restart local v37  # "cs":I
    move/from16 v10, v18

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v0, v37

    .line 437
    .end local v18  # "needsUnescape":Z
    .end local v21  # "stringIsUnquoted":Z
    .end local v22  # "_trans":I
    .end local v28  # "_keys":I
    .end local v29  # "_klen":I
    .end local v37  # "cs":I
    .local v0, "cs":I
    .local v10, "needsUnescape":Z
    .restart local v14  # "stringIsUnquoted":Z
    .restart local v15  # "_trans":I
    :goto_8a3
    if-nez v0, :cond_8b7

    .line 438
    const/16 v16, 0x5

    .line 439
    move/from16 v9, v17

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v3, v30

    move-object/from16 v7, v34

    move/from16 v4, v35

    move/from16 v6, v36

    goto/16 :goto_31

    .line 441
    :cond_8b7
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v30

    .end local v30  # "pe":I
    .local v3, "pe":I
    if-eq v5, v3, :cond_8cd

    .line 442
    const/16 v16, 0x1

    .line 443
    move/from16 v9, v17

    move/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v7, v34

    move/from16 v4, v35

    move/from16 v6, v36

    goto/16 :goto_31

    .line 441
    :cond_8cd
    move v4, v0

    .line 446
    .end local v0  # "cs":I
    .local v4, "cs":I
    :goto_8ce
    move/from16 v18, v14

    move/from16 v14, v35

    .end local v35  # "eof":I
    .local v14, "eof":I
    .local v18, "stringIsUnquoted":Z
    if-ne v5, v14, :cond_bdf

    .line 447
    :try_start_8d4
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v0, v0, v4

    .line 448
    .local v0, "__acts":I
    sget-object v21, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v22, v0, 0x1

    .end local v0  # "__acts":I
    .local v22, "__acts":I
    aget-byte v0, v21, v0
    :try_end_8de
    .catch Ljava/lang/RuntimeException; {:try_start_8d4 .. :try_end_8de} :catch_bcb

    move/from16 v21, v4

    move/from16 v4, v17

    .line 449
    .end local v17  # "s":I
    .local v0, "__nacts":I
    .local v4, "s":I
    .local v21, "cs":I
    :goto_8e2
    add-int/lit8 v17, v0, -0x1

    .end local v0  # "__nacts":I
    .local v17, "__nacts":I
    if-lez v0, :cond_bb5

    .line 450
    :try_start_8e6
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v23, v22, 0x1

    .end local v22  # "__acts":I
    .local v23, "__acts":I
    aget-byte v0, v0, v22

    packed-switch v0, :pswitch_data_d90

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v37, v6

    move/from16 v26, v10

    move-object/from16 v29, v12

    move/from16 v35, v14

    move/from16 v28, v15

    move-object/from16 v15, v27

    move-object/from16 v12, v40

    move-object/from16 v27, v8

    move-object/from16 v8, v39

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .end local v14  # "eof":I
    .end local v15  # "_trans":I
    .local v26, "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v28, "_trans":I
    .local v30, "s":I
    .local v31, "pe":I
    .restart local v35  # "eof":I
    goto/16 :goto_b82

    .line 454
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28  # "_trans":I
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .end local v35  # "eof":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "eof":I
    .restart local v15  # "_trans":I
    :pswitch_907  #0x1
    new-instance v0, Ljava/lang/String;
    :try_end_909
    .catch Ljava/lang/RuntimeException; {:try_start_8e6 .. :try_end_909} :catch_b9e

    move/from16 v35, v14

    .end local v14  # "eof":I
    .restart local v35  # "eof":I
    sub-int v14, v5, v4

    :try_start_90d
    invoke-direct {v0, v2, v4, v14}, Ljava/lang/String;-><init>([CII)V
    :try_end_910
    .catch Ljava/lang/RuntimeException; {:try_start_90d .. :try_end_910} :catch_b6d

    .line 455
    .local v0, "value":Ljava/lang/String;
    if-eqz v10, :cond_928

    :try_start_912
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_916
    .catch Ljava/lang/RuntimeException; {:try_start_912 .. :try_end_916} :catch_918

    move-object v0, v14

    goto :goto_929

    .line 541
    .end local v0  # "value":Ljava/lang/String;
    .end local v15  # "_trans":I
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    :catch_918
    move-exception v0

    move/from16 v31, v3

    move v9, v4

    move-object/from16 v27, v8

    move/from16 v14, v18

    move/from16 v11, v19

    move-object/from16 v7, v34

    move/from16 v6, v36

    goto/16 :goto_c1b

    .line 455
    .restart local v0  # "value":Ljava/lang/String;
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    :cond_928
    move-object v14, v0

    .line 457
    .end local v0  # "value":Ljava/lang/String;
    .local v14, "value":Ljava/lang/String;
    :goto_929
    if-eqz v19, :cond_989

    .line 458
    const/16 v19, 0x0

    .line 459
    if-eqz v13, :cond_95e

    :try_start_92f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_931
    .catch Ljava/lang/RuntimeException; {:try_start_92f .. :try_end_931} :catch_94c

    move/from16 v26, v10

    .end local v10  # "needsUnescape":Z
    .restart local v26  # "needsUnescape":Z
    :try_start_933
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v15

    move-object/from16 v15, v27

    .end local v15  # "_trans":I
    .restart local v28  # "_trans":I
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_964

    .line 541
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v26  # "needsUnescape":Z
    .end local v28  # "_trans":I
    .restart local v10  # "needsUnescape":Z
    :catch_94c
    move-exception v0

    move/from16 v26, v10

    move/from16 v31, v3

    move v9, v4

    move-object/from16 v27, v8

    move/from16 v14, v18

    move/from16 v11, v19

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v10  # "needsUnescape":Z
    .restart local v26  # "needsUnescape":Z
    goto/16 :goto_c1b

    .line 459
    .end local v26  # "needsUnescape":Z
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    :cond_95e
    move/from16 v26, v10

    move/from16 v28, v15

    move-object/from16 v15, v27

    .line 460
    .end local v10  # "needsUnescape":Z
    .end local v15  # "_trans":I
    .restart local v26  # "needsUnescape":Z
    .restart local v28  # "_trans":I
    :goto_964
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_967
    .catch Ljava/lang/RuntimeException; {:try_start_933 .. :try_end_967} :catch_977

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v37, v6

    move-object/from16 v27, v8

    move-object/from16 v29, v12

    move-object/from16 v8, v39

    move-object/from16 v12, v40

    goto/16 :goto_b45

    .line 541
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v28  # "_trans":I
    :catch_977
    move-exception v0

    move/from16 v31, v3

    move v9, v4

    move-object/from16 v27, v8

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move-object/from16 v7, v34

    move/from16 v6, v36

    goto/16 :goto_c1b

    .line 462
    .end local v26  # "needsUnescape":Z
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    :cond_989
    move/from16 v26, v10

    move/from16 v28, v15

    move-object/from16 v15, v27

    .end local v10  # "needsUnescape":Z
    .end local v15  # "_trans":I
    .restart local v26  # "needsUnescape":Z
    .restart local v28  # "_trans":I
    :try_start_98f
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_991
    .catch Ljava/lang/RuntimeException; {:try_start_98f .. :try_end_991} :catch_b58

    if-lez v0, :cond_99a

    :try_start_993
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_999
    .catch Ljava/lang/RuntimeException; {:try_start_993 .. :try_end_999} :catch_977

    goto :goto_99b

    :cond_99a
    const/4 v0, 0x0

    :goto_99b
    move-object v10, v0

    .line 463
    .local v10, "name":Ljava/lang/String;
    if-eqz v18, :cond_b14

    .line 464
    :try_start_99e
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9a2
    .catch Ljava/lang/RuntimeException; {:try_start_99e .. :try_end_9a2} :catch_b58

    if-eqz v0, :cond_9fd

    .line 465
    if-eqz v13, :cond_9d9

    :try_start_9a6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_9a8
    .catch Ljava/lang/RuntimeException; {:try_start_9a6 .. :try_end_9a8} :catch_9c7

    move-object/from16 v27, v8

    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :try_start_9aa
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v12

    move-object/from16 v12, v40

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9df

    .line 541
    .end local v10  # "name":Ljava/lang/String;
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28  # "_trans":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_9c7
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v31, v3

    move v9, v4

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    goto/16 :goto_c1b

    .line 465
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    .restart local v28  # "_trans":I
    :cond_9d9
    move-object/from16 v27, v8

    move-object/from16 v29, v12

    move-object/from16 v12, v40

    .line 466
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :goto_9df
    const/4 v8, 0x1

    invoke-virtual {v1, v10, v8}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_9e3
    .catch Ljava/lang/RuntimeException; {:try_start_9aa .. :try_end_9e3} :catch_9ed

    .line 467
    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v37, v6

    move-object/from16 v8, v39

    goto/16 :goto_b45

    .line 541
    .end local v10  # "name":Ljava/lang/String;
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v28  # "_trans":I
    :catch_9ed
    move-exception v0

    move/from16 v31, v3

    move v9, v4

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move-object/from16 v7, v34

    move/from16 v6, v36

    goto/16 :goto_c1b

    .line 468
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    .restart local v28  # "_trans":I
    :cond_9fd
    move-object/from16 v27, v8

    move-object/from16 v29, v12

    move-object/from16 v12, v40

    const/4 v8, 0x1

    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    move-object/from16 v8, v25

    :try_start_a06
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a0a
    .catch Ljava/lang/RuntimeException; {:try_start_a06 .. :try_end_a0a} :catch_b01

    if-eqz v0, :cond_a3f

    .line 469
    if-eqz v13, :cond_a2f

    :try_start_a0e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v37, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v25, v8

    move-object/from16 v8, v39

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a35

    :cond_a2f
    move-object/from16 v37, v6

    move-object/from16 v25, v8

    move-object/from16 v8, v39

    .line 470
    :goto_a35
    const/4 v6, 0x0

    invoke-virtual {v1, v10, v6}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_a39
    .catch Ljava/lang/RuntimeException; {:try_start_a0e .. :try_end_a39} :catch_9ed

    .line 471
    move/from16 v31, v3

    move/from16 v30, v4

    goto/16 :goto_b45

    .line 472
    :cond_a3f
    move-object/from16 v37, v6

    move-object/from16 v25, v8

    move-object/from16 v8, v39

    move-object/from16 v6, v24

    :try_start_a47
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a4b
    .catch Ljava/lang/RuntimeException; {:try_start_a47 .. :try_end_a4b} :catch_b01

    if-eqz v0, :cond_a59

    .line 473
    move-object/from16 v24, v6

    const/4 v6, 0x0

    :try_start_a50
    invoke-virtual {v1, v10, v6}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move/from16 v31, v3

    move/from16 v30, v4

    goto/16 :goto_b45

    .line 476
    :cond_a59
    move-object/from16 v24, v6

    const/4 v0, 0x0

    .local v0, "couldBeDouble":Z
    const/4 v6, 0x1

    .line 478
    .local v6, "couldBeLong":Z
    move/from16 v22, v4

    move/from16 v41, v22

    move/from16 v22, v0

    move/from16 v0, v41

    .local v0, "i":I
    .local v22, "couldBeDouble":Z
    :goto_a65
    if-ge v0, v5, :cond_a78

    .line 479
    aget-char v30, v2, v0
    :try_end_a69
    .catch Ljava/lang/RuntimeException; {:try_start_a50 .. :try_end_a69} :catch_9ed

    sparse-switch v30, :sswitch_data_d96

    .line 500
    const/16 v22, 0x0

    .line 501
    const/4 v6, 0x0

    .line 502
    goto :goto_a78

    .line 496
    :sswitch_a70
    const/16 v22, 0x1

    .line 497
    const/4 v6, 0x0

    .line 498
    goto :goto_a75

    .line 492
    :sswitch_a74
    nop

    .line 478
    :goto_a75
    add-int/lit8 v0, v0, 0x1

    goto :goto_a65

    .line 505
    .end local v0  # "i":I
    :cond_a78
    :goto_a78
    if-eqz v22, :cond_acd

    .line 507
    if-eqz v13, :cond_abe

    :try_start_a7c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_a7e
    .catch Ljava/lang/NumberFormatException; {:try_start_a7c .. :try_end_a7e} :catch_ab8
    .catch Ljava/lang/RuntimeException; {:try_start_a7c .. :try_end_a7e} :catch_b01

    move/from16 v30, v4

    .end local v4  # "s":I
    .restart local v30  # "s":I
    :try_start_a80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_a91
    .catch Ljava/lang/NumberFormatException; {:try_start_a80 .. :try_end_a91} :catch_ab4
    .catch Ljava/lang/RuntimeException; {:try_start_a80 .. :try_end_a91} :catch_aa3

    move/from16 v31, v3

    .end local v3  # "pe":I
    .restart local v31  # "pe":I
    :try_start_a93
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ac2

    .line 541
    .end local v6  # "couldBeLong":Z
    .end local v10  # "name":Ljava/lang/String;
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v22  # "couldBeDouble":Z
    .end local v23  # "__acts":I
    .end local v28  # "_trans":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    :catch_aa3
    move-exception v0

    move/from16 v31, v3

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .restart local v31  # "pe":I
    goto/16 :goto_c1b

    .line 510
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v6  # "couldBeLong":Z
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v22  # "couldBeDouble":Z
    .restart local v23  # "__acts":I
    .restart local v28  # "_trans":I
    :catch_ab4
    move-exception v0

    move/from16 v31, v3

    .end local v3  # "pe":I
    .restart local v31  # "pe":I
    goto :goto_acc

    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    :catch_ab8
    move-exception v0

    move/from16 v31, v3

    move/from16 v30, v4

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    goto :goto_acc

    .line 507
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    :cond_abe
    move/from16 v31, v3

    move/from16 v30, v4

    .line 508
    .end local v3  # "pe":I
    .end local v4  # "s":I
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    :goto_ac2
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3, v14}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_ac9
    .catch Ljava/lang/NumberFormatException; {:try_start_a93 .. :try_end_ac9} :catch_acb
    .catch Ljava/lang/RuntimeException; {:try_start_a93 .. :try_end_ac9} :catch_b49

    .line 509
    goto/16 :goto_b45

    .line 510
    :catch_acb
    move-exception v0

    .line 511
    :goto_acc
    goto :goto_b22

    .line 512
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    :cond_acd
    move/from16 v31, v3

    move/from16 v30, v4

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    if-eqz v6, :cond_b22

    .line 513
    if-eqz v13, :cond_af7

    :try_start_ad5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_af7
    .catch Ljava/lang/RuntimeException; {:try_start_ad5 .. :try_end_af7} :catch_b49

    .line 515
    :cond_af7
    :try_start_af7
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3, v14}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_afe
    .catch Ljava/lang/NumberFormatException; {:try_start_af7 .. :try_end_afe} :catch_aff
    .catch Ljava/lang/RuntimeException; {:try_start_af7 .. :try_end_afe} :catch_b49

    .line 516
    goto :goto_b45

    .line 517
    :catch_aff
    move-exception v0

    goto :goto_b22

    .line 541
    .end local v6  # "couldBeLong":Z
    .end local v10  # "name":Ljava/lang/String;
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v22  # "couldBeDouble":Z
    .end local v23  # "__acts":I
    .end local v28  # "_trans":I
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    :catch_b01
    move-exception v0

    move/from16 v31, v3

    move/from16 v30, v4

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    goto/16 :goto_c1b

    .line 463
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "name":Ljava/lang/String;
    .restart local v14  # "value":Ljava/lang/String;
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    .restart local v28  # "_trans":I
    :cond_b14
    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v37, v6

    move-object/from16 v27, v8

    move-object/from16 v29, v12

    move-object/from16 v8, v39

    move-object/from16 v12, v40

    .line 521
    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    :cond_b22
    :goto_b22
    if-eqz v13, :cond_b42

    :try_start_b24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    :cond_b42
    invoke-virtual {v1, v10, v14}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b45
    .catch Ljava/lang/RuntimeException; {:try_start_b24 .. :try_end_b45} :catch_b49

    .line 524
    .end local v10  # "name":Ljava/lang/String;
    :goto_b45
    const/16 v18, 0x0

    .line 525
    move v4, v5

    .end local v30  # "s":I
    .restart local v4  # "s":I
    goto :goto_b82

    .line 541
    .end local v4  # "s":I
    .end local v14  # "value":Ljava/lang/String;
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v28  # "_trans":I
    .restart local v30  # "s":I
    :catch_b49
    move-exception v0

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    goto/16 :goto_c1b

    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_b58
    move-exception v0

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v27, v8

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v10, v26

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    goto/16 :goto_c1b

    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v10, "needsUnescape":Z
    :catch_b6d
    move-exception v0

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v27, v8

    move/from16 v26, v10

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .restart local v26  # "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    goto/16 :goto_c1b

    .line 527
    .end local v30  # "s":I
    .restart local v4  # "s":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .restart local v23  # "__acts":I
    .restart local v28  # "_trans":I
    :goto_b82
    move-object/from16 v2, p1

    move-object/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v0, v17

    move/from16 v22, v23

    move/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v12, v29

    move/from16 v3, v31

    move/from16 v14, v35

    move-object/from16 v6, v37

    move-object/from16 v27, v15

    move/from16 v15, v28

    goto/16 :goto_8e2

    .line 541
    .end local v16  # "_goto_targ":I
    .end local v17  # "__nacts":I
    .end local v21  # "cs":I
    .end local v23  # "__acts":I
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28  # "_trans":I
    .end local v31  # "pe":I
    .end local v35  # "eof":I
    .restart local v3  # "pe":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "needsUnescape":Z
    .local v14, "eof":I
    :catch_b9e
    move-exception v0

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v27, v8

    move/from16 v26, v10

    move/from16 v35, v14

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .end local v14  # "eof":I
    .restart local v26  # "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    .restart local v35  # "eof":I
    goto/16 :goto_c1b

    .line 449
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .end local v35  # "eof":I
    .restart local v3  # "pe":I
    .restart local v4  # "s":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "eof":I
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    .restart local v17  # "__nacts":I
    .restart local v21  # "cs":I
    .local v22, "__acts":I
    :cond_bb5
    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v27, v8

    move/from16 v26, v10

    move/from16 v35, v14

    move/from16 v28, v15

    .end local v3  # "pe":I
    .end local v4  # "s":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .end local v14  # "eof":I
    .end local v15  # "_trans":I
    .restart local v26  # "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v28  # "_trans":I
    .restart local v30  # "s":I
    .restart local v31  # "pe":I
    .restart local v35  # "eof":I
    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v0, v21

    move/from16 v9, v30

    goto/16 :goto_c1d

    .line 541
    .end local v16  # "_goto_targ":I
    .end local v21  # "cs":I
    .end local v22  # "__acts":I
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28  # "_trans":I
    .end local v30  # "s":I
    .end local v31  # "pe":I
    .end local v35  # "eof":I
    .restart local v3  # "pe":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "eof":I
    .local v17, "s":I
    :catch_bcb
    move-exception v0

    move/from16 v31, v3

    move-object/from16 v27, v8

    move/from16 v26, v10

    move/from16 v35, v14

    move/from16 v9, v17

    move/from16 v14, v18

    move/from16 v11, v19

    move-object/from16 v7, v34

    move/from16 v6, v36

    .end local v3  # "pe":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .end local v14  # "eof":I
    .restart local v26  # "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31  # "pe":I
    .restart local v35  # "eof":I
    goto :goto_c1b

    .line 446
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31  # "pe":I
    .end local v35  # "eof":I
    .restart local v3  # "pe":I
    .local v4, "cs":I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10  # "needsUnescape":Z
    .restart local v14  # "eof":I
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    :cond_bdf
    move/from16 v31, v3

    move/from16 v21, v4

    move-object/from16 v27, v8

    move/from16 v26, v10

    move/from16 v35, v14

    move/from16 v28, v15

    .end local v3  # "pe":I
    .end local v4  # "cs":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10  # "needsUnescape":Z
    .end local v14  # "eof":I
    .end local v15  # "_trans":I
    .restart local v21  # "cs":I
    .restart local v26  # "needsUnescape":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v28  # "_trans":I
    .restart local v31  # "pe":I
    .restart local v35  # "eof":I
    move/from16 v9, v17

    move/from16 v14, v18

    move/from16 v11, v19

    move/from16 v0, v21

    goto :goto_c1d

    .line 541
    .end local v16  # "_goto_targ":I
    .end local v26  # "needsUnescape":Z
    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28  # "_trans":I
    .end local v31  # "pe":I
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .local v4, "eof":I
    .local v6, "top":I
    .restart local v7  # "stack":[I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v18, "needsUnescape":Z
    .local v21, "stringIsUnquoted":Z
    .local v30, "pe":I
    :catch_bf4
    move-exception v0

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v31, v30

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    .end local v4  # "eof":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v30  # "pe":I
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31  # "pe":I
    .restart local v34  # "stack":[I
    .restart local v35  # "eof":I
    .restart local v36  # "top":I
    goto :goto_c1b

    .end local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31  # "pe":I
    .end local v34  # "stack":[I
    .end local v35  # "eof":I
    .end local v36  # "top":I
    .restart local v3  # "pe":I
    .restart local v4  # "eof":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_c08
    move-exception v0

    move/from16 v31, v3

    move/from16 v35, v4

    move/from16 v36, v6

    move-object/from16 v34, v7

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v21

    .line 542
    .end local v3  # "pe":I
    .end local v4  # "eof":I
    .end local v8  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v17  # "s":I
    .end local v18  # "needsUnescape":Z
    .end local v19  # "stringIsName":Z
    .end local v21  # "stringIsUnquoted":Z
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v9, "s":I
    .restart local v10  # "needsUnescape":Z
    .restart local v11  # "stringIsName":Z
    .local v14, "stringIsUnquoted":Z
    .restart local v27  # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31  # "pe":I
    .restart local v35  # "eof":I
    :goto_c1b
    move-object v12, v0

    .end local v20  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .restart local v12  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    goto :goto_c24

    .line 535
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .end local v12  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v0, "cs":I
    .restart local v15  # "_trans":I
    .restart local v16  # "_goto_targ":I
    .restart local v20  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .restart local v34  # "stack":[I
    .restart local v36  # "top":I
    :goto_c1d
    nop

    .line 543
    .end local v15  # "_trans":I
    .end local v16  # "_goto_targ":I
    move-object/from16 v12, v20

    move-object/from16 v7, v34

    move/from16 v6, v36

    .line 545
    .end local v0  # "cs":I
    .end local v20  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .end local v34  # "stack":[I
    .end local v36  # "top":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    .restart local v12  # "parseRuntimeEx":Ljava/lang/RuntimeException;
    :goto_c24
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 546
    .local v0, "root":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 547
    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 548
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 550
    move/from16 v2, v31

    .end local v31  # "pe":I
    .local v2, "pe":I
    if-ge v5, v2, :cond_c9b

    .line 551
    const/4 v3, 0x1

    .line 552
    .local v3, "lineNumber":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c36
    if-ge v4, v5, :cond_c49

    .line 553
    move-object/from16 v8, p1

    aget-char v15, v8, v4

    move/from16 v16, v6

    const/16 v6, 0xa

    .end local v6  # "top":I
    .local v16, "top":I
    if-ne v15, v6, :cond_c44

    add-int/lit8 v3, v3, 0x1

    .line 552
    :cond_c44
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v16

    goto :goto_c36

    .end local v16  # "top":I
    .restart local v6  # "top":I
    :cond_c49
    move-object/from16 v8, p1

    move/from16 v16, v6

    .line 554
    .end local v4  # "i":I
    .end local v6  # "top":I
    .restart local v16  # "top":I
    add-int/lit8 v4, v5, -0x20

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 555
    .local v4, "start":I
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7  # "stack":[I
    .local v17, "stack":[I
    const-string v7, "Error parsing JSON on line "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " near: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v15, Ljava/lang/String;

    move/from16 v18, v3

    .end local v3  # "lineNumber":I
    .local v18, "lineNumber":I
    sub-int v3, v5, v4

    invoke-direct {v15, v8, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "*ERROR*"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v7, Ljava/lang/String;

    sub-int v15, v2, v5

    .line 556
    move/from16 v30, v2

    .end local v2  # "pe":I
    .restart local v30  # "pe":I
    const/16 v2, 0x40

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v7, v8, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 558
    .end local v4  # "start":I
    .end local v16  # "top":I
    .end local v17  # "stack":[I
    .end local v18  # "lineNumber":I
    .end local v30  # "pe":I
    .restart local v2  # "pe":I
    .restart local v6  # "top":I
    .restart local v7  # "stack":[I
    :cond_c9b
    move-object/from16 v8, p1

    move/from16 v30, v2

    move/from16 v16, v6

    move-object/from16 v17, v7

    .end local v2  # "pe":I
    .end local v6  # "top":I
    .end local v7  # "stack":[I
    .restart local v16  # "top":I
    .restart local v17  # "stack":[I
    .restart local v30  # "pe":I
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_cce

    .line 559
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    .line 560
    .local v2, "element":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 561
    if-eqz v2, :cond_cc6

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v3

    if-eqz v3, :cond_cc6

    .line 562
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v4, "Error parsing JSON, unmatched brace."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 564
    :cond_cc6
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v4, "Error parsing JSON, unmatched bracket."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    .end local v2  # "element":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_cce
    if-nez v12, :cond_cd1

    .line 567
    return-object v0

    .line 566
    :cond_cd1
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_cf0
    .packed-switch 0x0
        :pswitch_b4  #00000000
        :pswitch_d8  #00000001
        :pswitch_95  #00000002
        :pswitch_5f  #00000003
        :pswitch_77  #00000004
    .end packed-switch

    :pswitch_data_cfe
    .packed-switch 0x0
        :pswitch_7f9  #00000000
        :pswitch_521  #00000001
        :pswitch_4b1  #00000002
        :pswitch_48c  #00000003
        :pswitch_438  #00000004
        :pswitch_413  #00000005
        :pswitch_377  #00000006
        :pswitch_21d  #00000007
        :pswitch_1d0  #00000008
    .end packed-switch

    :sswitch_data_d14
    .sparse-switch
        0x22 -> :sswitch_1e8
        0x5c -> :sswitch_1e4
    .end sparse-switch

    :sswitch_data_d1e
    .sparse-switch
        0xa -> :sswitch_27a
        0xd -> :sswitch_27a
        0x2f -> :sswitch_251
        0x3a -> :sswitch_27a
        0x5c -> :sswitch_24a
    .end sparse-switch

    :sswitch_data_d34
    .sparse-switch
        0xa -> :sswitch_300
        0xd -> :sswitch_300
        0x2c -> :sswitch_300
        0x2f -> :sswitch_2ee
        0x5c -> :sswitch_2eb
        0x5d -> :sswitch_300
        0x7d -> :sswitch_300
    .end sparse-switch

    :sswitch_data_d52
    .sparse-switch
        0x2b -> :sswitch_6a7
        0x2d -> :sswitch_6a7
        0x2e -> :sswitch_6a3
        0x30 -> :sswitch_6a7
        0x31 -> :sswitch_6a7
        0x32 -> :sswitch_6a7
        0x33 -> :sswitch_6a7
        0x34 -> :sswitch_6a7
        0x35 -> :sswitch_6a7
        0x36 -> :sswitch_6a7
        0x37 -> :sswitch_6a7
        0x38 -> :sswitch_6a7
        0x39 -> :sswitch_6a7
        0x45 -> :sswitch_6a3
        0x65 -> :sswitch_6a3
    .end sparse-switch

    :pswitch_data_d90
    .packed-switch 0x1
        :pswitch_907  #00000001
    .end packed-switch

    :sswitch_data_d96
    .sparse-switch
        0x2b -> :sswitch_a74
        0x2d -> :sswitch_a74
        0x2e -> :sswitch_a70
        0x30 -> :sswitch_a74
        0x31 -> :sswitch_a74
        0x32 -> :sswitch_a74
        0x33 -> :sswitch_a74
        0x34 -> :sswitch_a74
        0x35 -> :sswitch_a74
        0x36 -> :sswitch_a74
        0x37 -> :sswitch_a74
        0x38 -> :sswitch_a74
        0x39 -> :sswitch_a74
        0x45 -> :sswitch_a70
        0x65 -> :sswitch_a70
    .end sparse-switch
.end method

.method protected pop()V
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 706
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 707
    return-void
.end method

.method protected startArray(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 697
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 698
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 699
    :cond_e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 700
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 701
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 689
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 690
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 691
    :cond_e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 692
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 693
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 710
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 711
    return-void
.end method
