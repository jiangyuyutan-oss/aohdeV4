.class public abstract Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;
.super Ljava/lang/Object;
.source "GLInterceptor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field protected calls:I

.field protected drawCalls:I

.field protected glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

.field protected shaderSwitches:I

.field protected textureBindings:I

.field protected final vertexCount:Lcom/badlogic/gdx/math/FloatCounter;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;)V
    .registers 4
    .param p1, "profiler"  # Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    .line 34
    return-void
.end method

.method public static resolveErrorNumber(I)Ljava/lang/String;
    .registers 3
    .param p0, "error"  # I

    .line 37
    packed-switch p0, :pswitch_data_26

    .line 49
    :pswitch_3  #0x503, 0x504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_17  #0x506
    const-string v0, "GL_INVALID_FRAMEBUFFER_OPERATION"

    return-object v0

    .line 47
    :pswitch_1a  #0x505
    const-string v0, "GL_OUT_OF_MEMORY"

    return-object v0

    .line 41
    :pswitch_1d  #0x502
    const-string v0, "GL_INVALID_OPERATION"

    return-object v0

    .line 39
    :pswitch_20  #0x501
    const-string v0, "GL_INVALID_VALUE"

    return-object v0

    .line 45
    :pswitch_23  #0x500
    const-string v0, "GL_INVALID_ENUM"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x500
        :pswitch_23  #00000500
        :pswitch_20  #00000501
        :pswitch_1d  #00000502
        :pswitch_3  #00000503
        :pswitch_3  #00000504
        :pswitch_1a  #00000505
        :pswitch_17  #00000506
    .end packed-switch
.end method


# virtual methods
.method public getCalls()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->calls:I

    return v0
.end method

.method public getDrawCalls()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->drawCalls:I

    return v0
.end method

.method public getShaderSwitches()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->shaderSwitches:I

    return v0
.end method

.method public getTextureBindings()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->textureBindings:I

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->calls:I

    .line 75
    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->textureBindings:I

    .line 76
    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->drawCalls:I

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->shaderSwitches:I

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 79
    return-void
.end method
