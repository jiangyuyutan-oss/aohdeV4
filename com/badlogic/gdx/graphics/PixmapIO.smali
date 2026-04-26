.class public Lcom/badlogic/gdx/graphics/PixmapIO;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG;,
        Lcom/badlogic/gdx/graphics/PixmapIO$CIM;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 56
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->read(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method

.method public static writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 49
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 50
    return-void
.end method

.method public static writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 4
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 80
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;IZ)V

    .line 81
    return-void
.end method

.method public static writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;IZ)V
    .registers 8
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "compression"  # I
    .param p3, "flipY"  # Z

    .line 64
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_27

    .line 66
    .local v0, "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    :try_start_13
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    .line 67
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 68
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_22

    .line 70
    :try_start_1c
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    .line 71
    nop

    .line 74
    .end local v0  # "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    nop

    .line 75
    return-void

    .line 70
    .restart local v0  # "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    .end local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p2  # "compression":I
    .end local p3  # "flipY":Z
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_27

    .line 72
    .end local v0  # "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    .restart local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p2  # "compression":I
    .restart local p3  # "flipY":Z
    :catch_27
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing PNG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
