.class public Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;
.super Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
.source "GLFrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatFrameBufferBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
        "Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;-><init>(II)V

    .line 543
    return-void
.end method


# virtual methods
.method public build()Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;
    .registers 2

    .line 547
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
    .registers 2

    .line 540
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;->build()Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;

    move-result-object v0

    return-object v0
.end method
