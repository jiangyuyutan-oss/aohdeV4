.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    }
.end annotation


# static fields
.field static indexPattern:Ljava/util/regex/Pattern;


# instance fields
.field alphaThreshold:I

.field private c:Lcom/badlogic/gdx/graphics/Color;

.field disposed:Z

.field duplicateBorder:Z

.field packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

.field packToTexture:Z

.field padding:I

.field pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field pageHeight:I

.field pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field

.field stripWhitespaceX:Z

.field stripWhitespaceY:Z

.field transparentColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    const-string v0, "(.+)_(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .registers 15
    .param p1, "pageWidth"  # I
    .param p2, "pageHeight"  # I
    .param p3, "pageFormat"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"  # I
    .param p5, "duplicateBorder"  # Z

    .line 118
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    .line 119
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .registers 16
    .param p1, "pageWidth"  # I
    .param p2, "pageHeight"  # I
    .param p3, "pageFormat"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"  # I
    .param p5, "duplicateBorder"  # Z
    .param p6, "packStrategy"  # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 124
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    .line 125
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .registers 11
    .param p1, "pageWidth"  # I
    .param p2, "pageHeight"  # I
    .param p3, "pageFormat"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"  # I
    .param p5, "duplicateBorder"  # Z
    .param p6, "stripWhitespaceX"  # Z
    .param p7, "stripWhitespaceY"  # Z
    .param p8, "packStrategy"  # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 816
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 137
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 138
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 139
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 140
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 141
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 142
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    .line 143
    iput-boolean p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    .line 144
    iput-object p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    .line 145
    return-void
.end method

.method private getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I
    .registers 16
    .param p1, "raster"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "splits"  # [I

    .line 760
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 761
    .local v0, "bottom":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 763
    .local v8, "right":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v9

    .line 764
    .local v9, "startX":I
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v10

    .line 767
    .local v10, "startY":I
    const/4 v7, 0x0

    .line 768
    .local v7, "endX":I
    const/4 v11, 0x0

    .line 769
    .local v11, "endY":I
    if-eqz v9, :cond_2d

    add-int/lit8 v3, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v7

    :cond_2d
    move v12, v7

    .line 770
    .end local v7  # "endX":I
    .local v12, "endX":I
    if-eqz v10, :cond_3b

    add-int/lit8 v5, v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v11

    .line 773
    :cond_3b
    add-int/lit8 v3, v12, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 774
    add-int/lit8 v5, v11, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 777
    const/4 v1, 0x0

    if-nez v9, :cond_58

    if-nez v12, :cond_58

    if-nez v10, :cond_58

    if-nez v11, :cond_58

    .line 778
    return-object v1

    .line 782
    :cond_58
    if-nez v9, :cond_5f

    if-nez v12, :cond_5f

    .line 783
    const/4 v9, -0x1

    .line 784
    const/4 v2, -0x1

    .end local v12  # "endX":I
    .local v2, "endX":I
    goto :goto_73

    .line 786
    .end local v2  # "endX":I
    .restart local v12  # "endX":I
    :cond_5f
    if-lez v9, :cond_6d

    .line 787
    add-int/lit8 v9, v9, -0x1

    .line 788
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v2, v3

    .end local v12  # "endX":I
    .restart local v2  # "endX":I
    goto :goto_73

    .line 791
    .end local v2  # "endX":I
    .restart local v12  # "endX":I
    :cond_6d
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 794
    .end local v12  # "endX":I
    .restart local v2  # "endX":I
    :goto_73
    if-nez v10, :cond_7a

    if-nez v11, :cond_7a

    .line 795
    const/4 v10, -0x1

    .line 796
    const/4 v3, -0x1

    .end local v11  # "endY":I
    .local v3, "endY":I
    goto :goto_8e

    .line 798
    .end local v3  # "endY":I
    .restart local v11  # "endY":I
    :cond_7a
    if-lez v10, :cond_88

    .line 799
    add-int/lit8 v10, v10, -0x1

    .line 800
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v11, -0x1

    sub-int/2addr v3, v4

    .end local v11  # "endY":I
    .restart local v3  # "endY":I
    goto :goto_8e

    .line 803
    .end local v3  # "endY":I
    .restart local v11  # "endY":I
    :cond_88
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 807
    .end local v11  # "endY":I
    .restart local v3  # "endY":I
    :goto_8e
    filled-new-array {v9, v2, v10, v3}, [I

    move-result-object v4

    .line 809
    .local v4, "pads":[I
    if-eqz p2, :cond_9b

    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 810
    return-object v1

    .line 813
    :cond_9b
    return-object v4
.end method

.method private getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I
    .registers 21
    .param p1, "raster"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "startX"  # I
    .param p3, "startY"  # I
    .param p4, "startPoint"  # Z
    .param p5, "xAxis"  # Z

    .line 818
    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 820
    .local v1, "rgba":[I
    if-eqz p5, :cond_9

    move/from16 v2, p2

    goto :goto_b

    :cond_9
    move/from16 v2, p3

    .line 821
    .local v2, "next":I
    :goto_b
    if-eqz p5, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    .line 822
    .local v3, "end":I
    :goto_16
    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eqz p4, :cond_1d

    move v6, v4

    goto :goto_1e

    :cond_1d
    move v6, v5

    .line 824
    .local v6, "breakA":I
    :goto_1e
    move/from16 v7, p2

    .line 825
    .local v7, "x":I
    move/from16 v8, p3

    .line 826
    .local v8, "y":I
    :goto_22
    if-eq v2, v3, :cond_9e

    .line 827
    if-eqz p5, :cond_28

    .line 828
    move v7, v2

    goto :goto_29

    .line 830
    :cond_28
    move v8, v2

    .line 832
    :goto_29
    move-object/from16 v9, p1

    invoke-virtual {v9, v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v10

    .line 833
    .local v10, "colint":I
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    .line 834
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v12, 0x437f0000  # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v1, v5

    .line 835
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v13, 0x1

    aput v11, v1, v13

    .line 836
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v14, 0x2

    aput v11, v1, v14

    .line 837
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v12, 0x3

    aput v11, v1, v12

    .line 838
    aget v11, v1, v12

    if-ne v11, v6, :cond_5e

    return v2

    .line 840
    :cond_5e
    if-nez p4, :cond_9a

    aget v11, v1, v5

    if-nez v11, :cond_70

    aget v11, v1, v13

    if-nez v11, :cond_70

    aget v11, v1, v14

    if-nez v11, :cond_70

    aget v11, v1, v12

    if-eq v11, v4, :cond_9a

    :cond_70
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 842
    :cond_9a
    nop

    .end local v10  # "colint":I
    add-int/lit8 v2, v2, 0x1

    .line 843
    goto :goto_22

    .line 845
    :cond_9e
    move-object/from16 v9, p1

    return v5
.end method

.method private getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I
    .registers 18
    .param p1, "raster"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 727
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v0

    .line 728
    .local v0, "startX":I
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v0

    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v1

    .line 729
    .local v1, "endX":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v2

    .line 730
    .local v2, "startY":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v2

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    .line 733
    .local v3, "endY":I
    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 734
    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    .line 737
    if-nez v0, :cond_4e

    if-nez v1, :cond_4e

    if-nez v2, :cond_4e

    if-nez v3, :cond_4e

    const/4 v4, 0x0

    return-object v4

    .line 740
    :cond_4e
    if-eqz v0, :cond_5c

    .line 741
    add-int/lit8 v0, v0, -0x1

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v4, v5

    .end local v1  # "endX":I
    .local v4, "endX":I
    goto :goto_62

    .line 745
    .end local v4  # "endX":I
    .restart local v1  # "endX":I
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 747
    .end local v1  # "endX":I
    .restart local v4  # "endX":I
    :goto_62
    if-eqz v2, :cond_70

    .line 748
    add-int/lit8 v2, v2, -0x1

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v1, v5

    .end local v3  # "endY":I
    .local v1, "endY":I
    goto :goto_76

    .line 752
    .end local v1  # "endY":I
    .restart local v3  # "endY":I
    :cond_70
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 755
    .end local v3  # "endY":I
    .restart local v1  # "endY":I
    :goto_76
    filled-new-array {v0, v4, v2, v1}, [I

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 4

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 329
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_1c

    .line 330
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 332
    .end local v1  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_1c
    goto :goto_7

    .line 333
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 334
    monitor-exit p0

    return-void

    .line 327
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .registers 5
    .param p1, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "useMipMaps"  # Z

    monitor-enter p0

    .line 339
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 340
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 341
    monitor-exit p0

    return-object v0

    .line 338
    .end local v0  # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1  # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p2  # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3  # "useMipMaps":Z
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDuplicateBorder()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public getPackToTexture()Z
    .registers 2

    .line 453
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return v0
.end method

.method public getPadding()I
    .registers 2

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 308
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    .line 309
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_1f

    monitor-exit p0

    return-object v1

    .line 310
    .end local v1  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2  # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1f
    goto :goto_7

    .line 311
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_20
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 306
    .end local p1  # "name":Ljava/lang/String;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getPageHeight()I
    .registers 2

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    monitor-enter p0

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1f

    .line 319
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_22

    .line 320
    .local v1, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v1, :cond_1c

    monitor-exit p0

    return v0

    .line 318
    .end local v1  # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 322
    .end local v0  # "i":I
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_1f
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 317
    .end local p1  # "name":Ljava/lang/String;
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageWidth()I
    .registers 2

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 298
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    .line 299
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_1f

    monitor-exit p0

    return-object v2

    .line 300
    .end local v1  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2  # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1f
    goto :goto_7

    .line 301
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_20
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 296
    .end local p1  # "name":Ljava/lang/String;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTransparentColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public declared-synchronized pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 3
    .param p1, "image"  # Lcom/badlogic/gdx/graphics/Pixmap;

    monitor-enter p0

    .line 156
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 156
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 29
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "image"  # Lcom/badlogic/gdx/graphics/Pixmap;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    monitor-enter p0

    .line 166
    :try_start_7
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2fb

    if-eqz v2, :cond_e

    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 167
    :cond_e
    if-eqz v0, :cond_30

    :try_start_10
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_30

    .line 168
    :cond_17
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_30
    :goto_30
    const/4 v2, 0x0

    .line 172
    .local v2, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_9c

    const-string v3, ".9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 173
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v3, v11, v11, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    move-object v13, v3

    .line 174
    .local v13, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v14, v3

    .line 175
    .end local v2  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v14, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 176
    invoke-direct {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I

    move-result-object v2

    iput-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    .line 177
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    invoke-direct {v1, v10, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I

    move-result-object v2

    iput-object v2, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v14

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 179
    move-object v2, v14

    .line 180
    .end local p2  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v11

    move-object v0, v3

    move-object v15, v13

    move-object v13, v2

    .end local p1  # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    goto/16 :goto_197

    .line 182
    .end local v0  # "name":Ljava/lang/String;
    .end local v13  # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v14  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_9c
    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-nez v3, :cond_b8

    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v3, :cond_a5

    goto :goto_b8

    .line 241
    :cond_a5
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v11, v11, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    move-object v13, v3

    move-object v14, v2

    move-object v15, v13

    move-object v13, v10

    .restart local v13  # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    goto/16 :goto_197

    .line 183
    .end local v13  # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    :cond_b8
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v21

    .line 184
    .local v21, "originalWidth":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v22

    .line 186
    .local v22, "originalHeight":I
    const/4 v3, 0x0

    .line 187
    .local v3, "top":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    .line 188
    .local v4, "bottom":I
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v5, :cond_10d

    .line 190
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_ca
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_ea

    .line 191
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_d1
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_e5

    .line 192
    invoke-virtual {v10, v6, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 193
    .local v7, "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 194
    .local v8, "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_e2

    goto :goto_ea

    .line 191
    .end local v7  # "pixel":I
    .end local v8  # "alpha":I
    :cond_e2
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 196
    .end local v6  # "x":I
    :cond_e5
    add-int/lit8 v3, v3, 0x1

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 199
    .end local v5  # "y":I
    :cond_ea
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .restart local v5  # "y":I
    :goto_ee
    add-int/lit8 v5, v5, -0x1

    if-lt v5, v3, :cond_10a

    .line 200
    const/4 v6, 0x0

    .restart local v6  # "x":I
    :goto_f3
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_107

    .line 201
    invoke-virtual {v10, v6, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 202
    .restart local v7  # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 203
    .restart local v8  # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_104

    goto :goto_10a

    .line 200
    .end local v7  # "pixel":I
    .end local v8  # "alpha":I
    :cond_104
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 205
    .end local v6  # "x":I
    :cond_107
    add-int/lit8 v4, v4, -0x1

    goto :goto_ee

    .line 208
    .end local v5  # "y":I
    :cond_10a
    :goto_10a
    move v11, v3

    move v13, v4

    goto :goto_10f

    .line 188
    :cond_10d
    move v11, v3

    move v13, v4

    .line 208
    .end local v3  # "top":I
    .end local v4  # "bottom":I
    .local v11, "top":I
    .local v13, "bottom":I
    :goto_10f
    const/4 v3, 0x0

    .line 209
    .local v3, "left":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 210
    .local v4, "right":I
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-eqz v5, :cond_156

    .line 212
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_119
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_135

    .line 213
    move v6, v11

    .local v6, "y":I
    :goto_120
    if-ge v6, v13, :cond_130

    .line 214
    invoke-virtual {v10, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 215
    .restart local v7  # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 216
    .restart local v8  # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_12d

    goto :goto_135

    .line 213
    .end local v7  # "pixel":I
    .end local v8  # "alpha":I
    :cond_12d
    add-int/lit8 v6, v6, 0x1

    goto :goto_120

    .line 218
    .end local v6  # "y":I
    :cond_130
    add-int/lit8 v3, v3, 0x1

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_119

    .line 221
    .end local v5  # "x":I
    :cond_135
    :goto_135
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    .restart local v5  # "x":I
    :goto_139
    add-int/lit8 v5, v5, -0x1

    if-lt v5, v3, :cond_151

    .line 222
    move v6, v11

    .restart local v6  # "y":I
    :goto_13e
    if-ge v6, v13, :cond_14e

    .line 223
    invoke-virtual {v10, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    .line 224
    .restart local v7  # "pixel":I
    and-int/lit16 v8, v7, 0xff

    .line 225
    .restart local v8  # "alpha":I
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_14b

    goto :goto_151

    .line 222
    .end local v7  # "pixel":I
    .end local v8  # "alpha":I
    :cond_14b
    add-int/lit8 v6, v6, 0x1

    goto :goto_13e

    .line 227
    .end local v6  # "y":I
    :cond_14e
    add-int/lit8 v4, v4, -0x1

    goto :goto_139

    .line 231
    .end local v5  # "x":I
    :cond_151
    :goto_151
    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_15a

    .line 210
    :cond_156
    move/from16 v23, v3

    move/from16 v24, v4

    .line 231
    .end local v3  # "left":I
    .end local v4  # "right":I
    .local v23, "left":I
    .local v24, "right":I
    :goto_15a
    sub-int v15, v24, v23

    .line 232
    .local v15, "newWidth":I
    sub-int v14, v13, v11

    .line 234
    .local v14, "newHeight":I
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v3, v15, v14, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v9, v3

    .line 235
    .end local v2  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v9, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 236
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object/from16 v3, p2

    move/from16 v6, v23

    move v7, v11

    move v8, v15

    move-object/from16 v25, v9

    .end local v9  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v25, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    move v9, v14

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 237
    move-object/from16 v2, v25

    .line 239
    .end local p2  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    const/4 v4, 0x0

    const/16 v16, 0x0

    move v5, v14

    .end local v14  # "newHeight":I
    .local v5, "newHeight":I
    move-object v14, v3

    move v6, v15

    .end local v15  # "newWidth":I
    .local v6, "newWidth":I
    move v15, v4

    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v19, v23

    move/from16 v20, v11

    invoke-direct/range {v14 .. v22}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIIIIIII)V

    move-object v13, v3

    .line 240
    .end local v5  # "newHeight":I
    .end local v6  # "newWidth":I
    .end local v11  # "top":I
    .end local v21  # "originalWidth":I
    .end local v22  # "originalHeight":I
    .end local v23  # "left":I
    .end local v24  # "right":I
    .local v13, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    move-object v15, v13

    move-object/from16 v14, v25

    move-object v13, v2

    .line 245
    .end local v2  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v25  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local p1  # "name":Ljava/lang/String;
    .restart local v0  # "name":Ljava/lang/String;
    .local v13, "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v14, "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v15, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    :goto_197
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getWidth()F

    move-result v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2d4

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getHeight()F

    move-result v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b1

    move-object/from16 v19, v0

    goto/16 :goto_2d6

    .line 250
    :cond_1b1
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v2, v1, v0, v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-result-object v2

    move-object v11, v2

    .line 251
    .local v11, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    if-eqz v0, :cond_1c4

    .line 252
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, v0, v15}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 256
    :cond_1c4
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v10, v2

    .local v10, "rectX":I
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v9, v2

    .local v9, "rectY":I
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v8, v2

    .local v8, "rectWidth":I
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v7, v2

    .line 258
    .local v7, "rectHeight":I
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    if-eqz v2, :cond_207

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-nez v2, :cond_207

    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v2, :cond_207

    iget-boolean v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    if-nez v2, :cond_207

    .line 259
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 260
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v23

    .line 261
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v24

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 260
    const/16 v18, 0x0

    move/from16 v17, v2

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v8

    move/from16 v22, v7

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_209

    .line 263
    :cond_207
    iput-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    .line 265
    :goto_209
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2, v13, v10, v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 267
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v2, :cond_2c2

    .line 268
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    move v12, v2

    .local v12, "imageWidth":I
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    move/from16 v16, v2

    .line 270
    .local v16, "imageHeight":I
    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v17, v10, -0x1

    add-int/lit8 v18, v9, -0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v21, 0x1

    move-object v3, v13

    move/from16 v22, v7

    .end local v7  # "rectHeight":I
    .local v22, "rectHeight":I
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8  # "rectWidth":I
    .local v21, "rectWidth":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9  # "rectY":I
    .local v17, "rectY":I
    move/from16 v9, v18

    move/from16 v18, v10

    .end local v10  # "rectX":I
    .local v18, "rectX":I
    move/from16 v10, v19

    move-object/from16 v19, v0

    move-object v0, v11

    .end local v11  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v0, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v19, "name":Ljava/lang/String;
    move/from16 v11, v20

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 271
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    add-int v8, v18, v21

    add-int/lit8 v9, v17, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v13

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 272
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v5, v16, -0x1

    add-int/lit8 v8, v18, -0x1

    add-int v9, v17, v22

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v13

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 273
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v16, -0x1

    add-int v8, v18, v21

    add-int v9, v17, v22

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v13

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 275
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v9, v17, -0x1

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v3, v13

    move v6, v12

    move/from16 v8, v18

    move/from16 v10, v21

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 276
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v5, v16, -0x1

    add-int v9, v17, v22

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v3, v13

    move v6, v12

    move/from16 v8, v18

    move/from16 v10, v21

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 277
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v8, v18, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v13

    move/from16 v7, v16

    move/from16 v9, v17

    move/from16 v11, v22

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 278
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v12, -0x1

    add-int v8, v18, v21

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v13

    move/from16 v7, v16

    move/from16 v9, v17

    move/from16 v11, v22

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    goto :goto_2cd

    .line 267
    .end local v12  # "imageWidth":I
    .end local v16  # "imageHeight":I
    .end local v17  # "rectY":I
    .end local v18  # "rectX":I
    .end local v19  # "name":Ljava/lang/String;
    .end local v21  # "rectWidth":I
    .end local v22  # "rectHeight":I
    .local v0, "name":Ljava/lang/String;
    .restart local v7  # "rectHeight":I
    .restart local v8  # "rectWidth":I
    .restart local v9  # "rectY":I
    .restart local v10  # "rectX":I
    .restart local v11  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :cond_2c2
    move-object/from16 v19, v0

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move-object v0, v11

    .line 281
    .end local v7  # "rectHeight":I
    .end local v8  # "rectWidth":I
    .end local v9  # "rectY":I
    .end local v10  # "rectX":I
    .end local v11  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .local v0, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .restart local v17  # "rectY":I
    .restart local v18  # "rectX":I
    .restart local v19  # "name":Ljava/lang/String;
    .restart local v21  # "rectWidth":I
    .restart local v22  # "rectHeight":I
    :goto_2cd
    if-eqz v14, :cond_2d2

    .line 282
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_2d2
    .catchall {:try_start_10 .. :try_end_2d2} :catchall_2fb

    .line 285
    :cond_2d2
    monitor-exit p0

    return-object v15

    .line 245
    .end local v17  # "rectY":I
    .end local v18  # "rectX":I
    .end local v19  # "name":Ljava/lang/String;
    .end local v21  # "rectWidth":I
    .end local v22  # "rectHeight":I
    .local v0, "name":Ljava/lang/String;
    :cond_2d4
    move-object/from16 v19, v0

    .line 246
    .end local v0  # "name":Ljava/lang/String;
    .restart local v19  # "name":Ljava/lang/String;
    :goto_2d6
    if-nez v19, :cond_2e0

    :try_start_2d8
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Page size too small for pixmap."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2e0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page size too small for pixmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v19

    .end local v19  # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2fb
    .catchall {:try_start_2d8 .. :try_end_2fb} :catchall_2fb

    .line 165
    .end local v3  # "name":Ljava/lang/String;
    .end local v13  # "image":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v14  # "pixmapToDispose":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v15  # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    :catchall_2fb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDuplicateBorder(Z)V
    .registers 2
    .param p1, "duplicateBorder"  # Z

    .line 449
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 450
    return-void
.end method

.method public setPackToTexture(Z)V
    .registers 2
    .param p1, "packToTexture"  # Z

    .line 460
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    .line 461
    return-void
.end method

.method public setPadding(I)V
    .registers 2
    .param p1, "padding"  # I

    .line 441
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 442
    return-void
.end method

.method public setPageFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .registers 2
    .param p1, "pageFormat"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 433
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 434
    return-void
.end method

.method public setPageHeight(I)V
    .registers 2
    .param p1, "pageHeight"  # I

    .line 425
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 426
    return-void
.end method

.method public setPageWidth(I)V
    .registers 2
    .param p1, "pageWidth"  # I

    .line 417
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 418
    return-void
.end method

.method public setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 722
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 723
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Pixmap;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->sort(Lcom/badlogic/gdx/utils/Array;)V

    .line 151
    return-void
.end method

.method public declared-synchronized updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 6
    .param p1, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "useMipMaps"  # Z

    monitor-enter p0

    .line 408
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 409
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 410
    .end local v1  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_17
    monitor-exit p0

    return-void

    .line 407
    .end local p1  # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p2  # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3  # "useMipMaps":Z
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 11
    .param p1, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"  # Z

    monitor-enter p0

    .line 350
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 351
    monitor-exit p0

    return-void

    .line 349
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local p1  # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p2  # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3  # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4  # "useMipMaps":Z
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    .registers 22
    .param p1, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"  # Z
    .param p5, "useIndexes"  # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 359
    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    :try_start_9
    invoke-virtual {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 360
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 361
    .local v5, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v6, :cond_c4

    .line 362
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 363
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    .line 364
    .local v8, "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v11, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v12, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v13, v9

    iget v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v14, v9

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    move-object v9, v15

    .line 366
    .local v9, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v10, :cond_70

    .line 367
    new-array v10, v12, [Ljava/lang/String;

    const-string v13, "split"

    const/4 v14, 0x0

    aput-object v13, v10, v14

    const-string v13, "pad"

    aput-object v13, v10, v11

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->names:[Ljava/lang/String;

    .line 368
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    filled-new-array {v10, v13}, [[I

    move-result-object v10

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->values:[[I

    .line 371
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_70
    const/4 v10, -0x1

    .line 372
    .local v10, "imageIndex":I
    move-object v13, v7

    .line 374
    .local v13, "imageName":Ljava/lang/String;
    if-eqz p5, :cond_8e

    .line 375
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 376
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_8e

    .line 377
    invoke-virtual {v14, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 378
    invoke-virtual {v14, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 382
    .end local v14  # "matcher":Ljava/util/regex/Matcher;
    :cond_8e
    iput-object v13, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 383
    iput v10, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 384
    iget v11, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    int-to-float v11, v11

    iput v11, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 385
    iget v11, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    int-to-float v11, v11

    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    sub-float/2addr v11, v12

    iget v12, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 386
    iget v11, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    iput v11, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 387
    iget v11, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    iput v11, v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 390
    .end local v7  # "name":Ljava/lang/String;
    .end local v8  # "rect":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
    .end local v9  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v10  # "imageIndex":I
    .end local v13  # "imageName":Ljava/lang/String;
    goto/16 :goto_2a

    .line 391
    :cond_b6
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v6

    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catchall {:try_start_9 .. :try_end_c4} :catchall_c8

    .line 394
    .end local v5  # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :cond_c4
    goto/16 :goto_12

    .line 395
    :cond_c6
    monitor-exit p0

    return-void

    .line 358
    .end local p1  # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local p2  # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3  # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4  # "useMipMaps":Z
    .end local p5  # "useIndexes":Z
    :catchall_c8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 8
    .param p2, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Z)V"
        }
    .end annotation

    .local p1, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    monitor-enter p0

    .line 401
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 402
    :goto_4
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_21

    .line 403
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_4

    .line 404
    .end local p0  # "this":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_21
    monitor-exit p0

    return-void

    .line 400
    .end local p1  # "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    .end local p2  # "minFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p3  # "magFilter":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local p4  # "useMipMaps":Z
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
