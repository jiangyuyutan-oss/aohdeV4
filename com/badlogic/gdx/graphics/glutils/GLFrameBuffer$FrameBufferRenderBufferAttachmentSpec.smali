.class public Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FrameBufferRenderBufferAttachmentSpec"
.end annotation


# instance fields
.field internalFormat:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "internalFormat"  # I

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    .line 440
    return-void
.end method
