.class public Lcom/badlogic/gdx/graphics/Pixmap;
.super Ljava/lang/Object;
.source "Pixmap.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;,
        Lcom/badlogic/gdx/graphics/Pixmap$Filter;,
        Lcom/badlogic/gdx/graphics/Pixmap$Blending;,
        Lcom/badlogic/gdx/graphics/Pixmap$Format;
    }
.end annotation


# instance fields
.field private blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

.field color:I

.field private disposed:Z

.field private filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

.field final pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .registers 6
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    .line 139
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 6
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 162
    :try_start_e
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    .line 163
    .local v1, "bytes":[B
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v3, v1

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1c

    .line 166
    .end local v1  # "bytes":[B
    nop

    .line 167
    return-void

    .line 164
    :catch_1c
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    .registers 3
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 172
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 173
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 7
    .param p1, "encodedData"  # [B
    .param p2, "offset"  # I
    .param p3, "len"  # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 150
    :try_start_e
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_17

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_17
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t load pixmap from image data"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 14
    .param p0, "x"  # I
    .param p1, "y"  # I
    .param p2, "w"  # I
    .param p3, "h"  # I

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd05

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 103
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 104
    .local v9, "pixels":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v8, v9

    invoke-interface/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 106
    return-object v0
.end method

.method public static downloadFromUrl(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V
    .registers 5
    .param p0, "url"  # Ljava/lang/String;
    .param p1, "responseListener"  # Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    .line 182
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "request":Lcom/badlogic/gdx/Net$HttpRequest;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap$1;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/Pixmap$1;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    .line 211
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 370
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-nez v0, :cond_d

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    .line 373
    return-void

    .line 370
    :cond_d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawCircle(III)V
    .registers 6
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "radius"  # I

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(IIII)V

    .line 326
    return-void
.end method

.method public drawLine(IIII)V
    .registers 11
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "x2"  # I
    .param p4, "y2"  # I

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(IIIII)V

    .line 255
    return-void
.end method

.method public drawPixel(II)V
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 385
    return-void
.end method

.method public drawPixel(III)V
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "color"  # I

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 394
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .registers 12
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 274
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 275
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V
    .registers 16
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "srcx"  # I
    .param p5, "srcy"  # I
    .param p6, "srcWidth"  # I
    .param p7, "srcHeight"  # I

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    .line 288
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V
    .registers 22
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "srcx"  # I
    .param p3, "srcy"  # I
    .param p4, "srcWidth"  # I
    .param p5, "srcHeight"  # I
    .param p6, "dstx"  # I
    .param p7, "dsty"  # I
    .param p8, "dstWidth"  # I
    .param p9, "dstHeight"  # I

    .line 305
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move-object v11, p1

    iget-object v2, v11, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V

    .line 306
    return-void
.end method

.method public drawRectangle(IIII)V
    .registers 11
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(IIIII)V

    .line 266
    return-void
.end method

.method public fill()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(I)V

    .line 238
    return-void
.end method

.method public fillCircle(III)V
    .registers 6
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "radius"  # I

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(IIII)V

    .line 335
    return-void
.end method

.method public fillRectangle(IIII)V
    .registers 11
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(IIIII)V

    .line 317
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .registers 15
    .param p1, "x1"  # I
    .param p2, "y1"  # I
    .param p3, "x2"  # I
    .param p4, "y2"  # I
    .param p5, "x3"  # I
    .param p6, "y3"  # I

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v7, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillTriangle(IIIIIII)V

    .line 347
    return-void
.end method

.method public getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object v0
.end method

.method public getFilter()Lcom/badlogic/gdx/graphics/Pixmap$Filter;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public getGLFormat()I
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLType()I
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLType()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPixel(II)I
    .registers 4
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .registers 3

    .line 423
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-nez v0, :cond_b

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 423
    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .registers 2

    .line 376
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    return v0
.end method

.method public setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V
    .registers 4
    .param p1, "blending"  # Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    if-ne p1, v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    .line 122
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 226
    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 227
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"  # I

    .line 216
    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 217
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 6
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 232
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 233
    return-void
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V
    .registers 4
    .param p1, "filter"  # Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 128
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->filter:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    if-ne p1, v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(I)V

    .line 130
    return-void
.end method

.method public setPixels(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "pixels"  # Ljava/nio/ByteBuffer;

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 431
    .local v0, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 432
    return-void
.end method
