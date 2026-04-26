.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bitmap"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "address"  # J

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 617
    return-void
.end method

.method private static native getBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private static native getNumGray(J)I
.end method

.method private static native getPitch(J)I
.end method

.method private static native getPixelMode(J)I
.end method

.method private static native getRows(J)I
.end method

.method private static native getWidth(J)I
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 644
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v0

    if-nez v0, :cond_c

    .line 650
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 651
    :cond_c
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNumGray()I
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getNumGray(J)I

    move-result v0

    return v0
.end method

.method public getPitch()I
    .registers 3

    .line 636
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch(J)I

    move-result v0

    return v0
.end method

.method public getPixelMode()I
    .registers 3

    .line 734
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode(J)I

    move-result v0

    return v0
.end method

.method public getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 28
    .param p1, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "gamma"  # F

    .line 661
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v3

    .line 662
    .local v3, "rows":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 664
    .local v4, "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode()I

    move-result v5

    .line 665
    .local v5, "pixelMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 666
    .local v6, "rowBytes":I
    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p2

    if-ne v9, v7, :cond_50

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY:I

    if-ne v5, v7, :cond_50

    if-ne v6, v2, :cond_50

    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_50

    .line 667
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 668
    .local v7, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-static {v4, v10, v11}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v19, v5

    move/from16 v20, v6

    goto/16 :goto_13c

    .line 670
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_50
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 671
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-static/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(Lcom/badlogic/gdx/graphics/Color;)I

    move-result v10

    .line 672
    .local v10, "rgba":I
    new-array v11, v6, [B

    .line 673
    .local v11, "srcRow":[B
    new-array v12, v2, [I

    .line 674
    .local v12, "dstRow":[I
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 675
    .local v13, "dst":Ljava/nio/IntBuffer;
    sget v14, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_MONO:I

    if-ne v5, v14, :cond_c5

    .line 677
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_6c
    if-ge v14, v3, :cond_b7

    .line 678
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 679
    const/4 v15, 0x0

    .local v15, "i":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "x":I
    :goto_76
    if-ge v8, v2, :cond_ad

    .line 680
    aget-byte v17, v11, v15

    .line 681
    .local v17, "b":B
    const/16 v18, 0x0

    move/from16 v19, v5

    .end local v5  # "pixelMode":I
    .local v18, "ii":I
    .local v19, "pixelMode":I
    sub-int v5, v2, v8

    move/from16 v20, v6

    .end local v6  # "rowBytes":I
    .local v20, "rowBytes":I
    const/16 v6, 0x8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v6, v18

    .end local v18  # "ii":I
    .local v5, "n":I
    .local v6, "ii":I
    :goto_8a
    if-ge v6, v5, :cond_a4

    .line 682
    rsub-int/lit8 v18, v6, 0x7

    const/16 v21, 0x1

    shl-int v18, v21, v18

    and-int v18, v17, v18

    if-eqz v18, :cond_9b

    .line 683
    add-int v18, v8, v6

    aput v10, v12, v18

    goto :goto_a1

    .line 685
    :cond_9b
    add-int v18, v8, v6

    const/16 v16, 0x0

    aput v16, v12, v18

    .line 681
    :goto_a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 679
    .end local v5  # "n":I
    .end local v6  # "ii":I
    .end local v17  # "b":B
    :cond_a4
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x8

    move/from16 v5, v19

    move/from16 v6, v20

    goto :goto_76

    .end local v19  # "pixelMode":I
    .end local v20  # "rowBytes":I
    .local v5, "pixelMode":I
    .local v6, "rowBytes":I
    :cond_ad
    move/from16 v19, v5

    move/from16 v20, v6

    .line 688
    .end local v5  # "pixelMode":I
    .end local v6  # "rowBytes":I
    .end local v8  # "x":I
    .end local v15  # "i":I
    .restart local v19  # "pixelMode":I
    .restart local v20  # "rowBytes":I
    invoke-virtual {v13, v12}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 677
    add-int/lit8 v14, v14, 0x1

    goto :goto_6c

    .end local v19  # "pixelMode":I
    .end local v20  # "rowBytes":I
    .restart local v5  # "pixelMode":I
    .restart local v6  # "rowBytes":I
    :cond_b7
    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5  # "pixelMode":I
    .end local v6  # "rowBytes":I
    .restart local v19  # "pixelMode":I
    .restart local v20  # "rowBytes":I
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .end local v14  # "y":I
    goto/16 :goto_13a

    .line 692
    .end local v19  # "pixelMode":I
    .end local v20  # "rowBytes":I
    .restart local v5  # "pixelMode":I
    .restart local v6  # "rowBytes":I
    :cond_c5
    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5  # "pixelMode":I
    .end local v6  # "rowBytes":I
    .restart local v19  # "pixelMode":I
    .restart local v20  # "rowBytes":I
    and-int/lit16 v5, v10, -0x100

    .line 693
    .local v5, "rgb":I
    and-int/lit16 v6, v10, 0xff

    .line 694
    .local v6, "a":I
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_ce
    if-ge v8, v3, :cond_130

    .line 695
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 696
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_d4
    if-ge v14, v2, :cond_120

    .line 700
    aget-byte v15, v11, v14

    move/from16 v17, v2

    .end local v2  # "width":I
    .local v17, "width":I
    const/16 v2, 0xff

    and-int/2addr v15, v2

    .line 701
    .local v15, "alpha":I
    if-nez v15, :cond_ea

    .line 702
    aput v5, v12, v14

    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    goto :goto_113

    .line 703
    :cond_ea
    if-ne v15, v2, :cond_f9

    .line 704
    or-int v2, v5, v6

    aput v2, v12, v14

    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    goto :goto_113

    .line 706
    :cond_f9
    int-to-float v2, v6

    move/from16 v18, v3

    .end local v3  # "rows":I
    .local v18, "rows":I
    int-to-float v3, v15

    const/high16 v21, 0x437f0000  # 255.0f

    div-float v3, v3, v21

    move-object/from16 v21, v4

    .end local v4  # "src":Ljava/nio/ByteBuffer;
    .local v21, "src":Ljava/nio/ByteBuffer;
    float-to-double v3, v3

    move/from16 v23, v6

    move-object/from16 v22, v7

    .end local v6  # "a":I
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v22, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v23, "a":I
    float-to-double v6, v1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int/2addr v2, v5

    aput v2, v12, v14

    .line 696
    .end local v15  # "alpha":I
    :goto_113
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    move/from16 v6, v23

    goto :goto_d4

    .end local v17  # "width":I
    .end local v18  # "rows":I
    .end local v21  # "src":Ljava/nio/ByteBuffer;
    .end local v22  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v23  # "a":I
    .restart local v2  # "width":I
    .restart local v3  # "rows":I
    .restart local v4  # "src":Ljava/nio/ByteBuffer;
    .restart local v6  # "a":I
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_120
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    .line 708
    .end local v2  # "width":I
    .end local v3  # "rows":I
    .end local v4  # "src":Ljava/nio/ByteBuffer;
    .end local v6  # "a":I
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v14  # "x":I
    .restart local v17  # "width":I
    .restart local v18  # "rows":I
    .restart local v21  # "src":Ljava/nio/ByteBuffer;
    .restart local v22  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v23  # "a":I
    invoke-virtual {v13, v12}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 694
    add-int/lit8 v8, v8, 0x1

    goto :goto_ce

    .end local v17  # "width":I
    .end local v18  # "rows":I
    .end local v21  # "src":Ljava/nio/ByteBuffer;
    .end local v22  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v23  # "a":I
    .restart local v2  # "width":I
    .restart local v3  # "rows":I
    .restart local v4  # "src":Ljava/nio/ByteBuffer;
    .restart local v6  # "a":I
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_130
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    .line 713
    .end local v2  # "width":I
    .end local v3  # "rows":I
    .end local v4  # "src":Ljava/nio/ByteBuffer;
    .end local v5  # "rgb":I
    .end local v6  # "a":I
    .end local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v8  # "y":I
    .end local v10  # "rgba":I
    .end local v11  # "srcRow":[B
    .end local v12  # "dstRow":[I
    .end local v13  # "dst":Ljava/nio/IntBuffer;
    .restart local v17  # "width":I
    .restart local v18  # "rows":I
    .restart local v21  # "src":Ljava/nio/ByteBuffer;
    .restart local v22  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_13a
    move-object/from16 v7, v22

    .end local v22  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v7  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_13c
    move-object v2, v7

    .line 714
    .local v2, "converted":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    if-eq v0, v3, :cond_162

    .line 715
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v2, v3

    .line 716
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 718
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 719
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 721
    :cond_162
    return-object v2
.end method

.method public getRows()I
    .registers 3

    .line 620
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 628
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth(J)I

    move-result v0

    return v0
.end method
