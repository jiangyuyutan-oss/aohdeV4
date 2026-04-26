.class public Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;
.super Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
.source "GLFrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferCubemapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
        "Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;-><init>(II)V

    .line 554
    return-void
.end method


# virtual methods
.method public build()Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;
    .registers 2

    .line 558
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
    .registers 2

    .line 551
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;->build()Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;

    move-result-object v0

    return-object v0
.end method
