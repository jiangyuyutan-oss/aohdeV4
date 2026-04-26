.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "DefaultTextureBinder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final LRU:I = 0x1

.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I


# instance fields
.field private bindCount:I

.field private final count:I

.field private currentTexture:I

.field private final method:I

.field private final offset:I

.field private reuseCount:I

.field private reused:Z

.field private final tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field private final textures:[Lcom/badlogic/gdx/graphics/GLTexture;

.field private unitsLRU:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "method"  # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    .line 54
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "method"  # I
    .param p2, "offset"  # I

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    .line 59
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "method"  # I
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 49
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 102
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 139
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 62
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->getMaxTextureUnits()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    .local v0, "max":I
    if-gez p3, :cond_1f

    sub-int p3, v0, p2

    .line 64
    :cond_1f
    if-ltz p2, :cond_3b

    if-ltz p3, :cond_3b

    add-int v1, p2, p3

    if-gt v1, v0, :cond_3b

    .line 66
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    .line 67
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    .line 69
    new-array v1, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    .line 70
    const/4 v1, 0x1

    if-ne p1, v1, :cond_37

    new-array v1, p3, [I

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    .line 71
    return-void

    .line 65
    :cond_3b
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Illegal arguments"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .registers 8
    .param p1, "textureDesc"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .param p2, "rebind"  # Z

    .line 112
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 113
    .local v0, "texture":Lcom/badlogic/gdx/graphics/GLTexture;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 115
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    packed-switch v1, :pswitch_data_4e

    .line 123
    const/4 v1, -0x1

    return v1

    .line 120
    :pswitch_c  #0x1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureLRU(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v2

    move v3, v2

    .local v3, "idx":I
    add-int/2addr v1, v2

    .line 121
    .local v1, "result":I
    goto :goto_1e

    .line 117
    .end local v1  # "result":I
    .end local v3  # "idx":I
    :pswitch_15  #0x0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v2

    move v3, v2

    .restart local v3  # "idx":I
    add-int/2addr v1, v2

    .line 118
    .restart local v1  # "result":I
    nop

    .line 126
    :goto_1e
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-eqz v2, :cond_38

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 128
    if-eqz p2, :cond_2e

    .line 129
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_3e

    .line 131
    :cond_2e
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v4, 0x84c0

    add-int/2addr v4, v1

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_3e

    .line 133
    :cond_38
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 134
    :goto_3e
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 135
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 136
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_c  #00000001
    .end packed-switch
.end method

.method private final bindTextureLRU(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 7
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/GLTexture;

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 158
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aget v1, v1, v0

    .line 159
    .local v1, "idx":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_13

    .line 160
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 161
    goto :goto_1d

    .line 163
    :cond_13
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v3, v3, v1

    if-nez v3, :cond_1a

    .line 164
    goto :goto_1d

    .line 157
    .end local v1  # "idx":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-lt v0, v1, :cond_25

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    add-int/lit8 v0, v1, -0x1

    .line 168
    :cond_25
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aget v1, v1, v0

    .line 169
    .restart local v1  # "idx":I
    :goto_29
    if-lez v0, :cond_38

    .line 170
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 173
    :cond_38
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 174
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-nez v2, :cond_4b

    .line 175
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v2, v1

    .line 176
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 178
    :cond_4b
    return v1
.end method

.method private final bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 6
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/GLTexture;

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_18

    .line 143
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v1, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    rem-int/2addr v1, v3

    .line 144
    .local v1, "idx":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_15

    .line 145
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 146
    return v1

    .line 142
    .end local v1  # "idx":I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0  # "i":I
    :cond_18
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    aput-object p1, v0, v1

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    return v0
.end method

.method private static getMaxTextureUnits()I
    .registers 3

    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 75
    .local v0, "buffer":Ljava/nio/IntBuffer;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public begin()V
    .registers 4

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v0, v1, :cond_15

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->unitsLRU:[I

    aput v0, v1, v0

    .line 81
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0  # "i":I
    :cond_15
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 8
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/GLTexture;

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .registers 3
    .param p1, "textureDesc"  # Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public end()V
    .registers 3

    .line 94
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 95
    return-void
.end method

.method public final getBindCount()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return v0
.end method

.method public final getReuseCount()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    return v0
.end method

.method public final resetCounts()V
    .registers 2

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 194
    return-void
.end method
