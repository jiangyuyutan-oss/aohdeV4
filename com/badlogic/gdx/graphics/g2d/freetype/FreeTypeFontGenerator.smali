.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
.super Ljava/lang/Object;
.source "FreeTypeFontGenerator.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARS:Ljava/lang/String; = "\u0000ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!`?\'.,;:()[]{}<>|/@\\^$€-%+=#_&~*\u007f\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0¡¢£¤¥¦§¨©ª«¬\u00ad®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ"

.field public static final NO_MAXIMUM:I = -0x1

.field private static maxTextureSize:I


# instance fields
.field bitmapped:Z

.field final face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

.field final library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

.field final name:Ljava/lang/String;

.field private pixelHeight:I

.field private pixelWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/16 v0, 0x400

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 3
    .param p1, "fontFile"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;I)V
    .registers 5
    .param p1, "fontFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "faceIndex"  # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    .line 94
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 97
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->checkForBitmapFont()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 98
    :cond_21
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 99
    return-void
.end method

.method private checkForBitmapFont()Z
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags()I

    move-result v0

    .line 139
    .local v0, "faceFlags":I
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    and-int/2addr v1, v0

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    if-ne v1, v2, :cond_2e

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    and-int/2addr v1, v0

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    if-ne v1, v2, :cond_2e

    .line 141
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    .line 143
    .local v1, "slot":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat()I

    move-result v2

    const v3, 0x62697473

    if-ne v2, v3, :cond_2e

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    .line 148
    .end local v1  # "slot":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    :cond_2e
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    return v1
.end method

.method private getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I
    .registers 5
    .param p1, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    .line 102
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    .line 103
    .local v0, "loadingFlags":I
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$freetype$FreeTypeFontGenerator$Hinting:[I

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->hinting:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    goto :goto_35

    .line 123
    :pswitch_10  #0x7
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_35

    .line 120
    :pswitch_17  #0x6
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 121
    goto :goto_35

    .line 117
    :pswitch_1e  #0x5
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 118
    goto :goto_35

    .line 114
    :pswitch_25  #0x4
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    or-int/2addr v0, v1

    .line 115
    goto :goto_35

    .line 111
    :pswitch_29  #0x3
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    or-int/2addr v0, v1

    .line 112
    goto :goto_35

    .line 108
    :pswitch_2d  #0x2
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    or-int/2addr v0, v1

    .line 109
    goto :goto_35

    .line 105
    :pswitch_31  #0x1
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    or-int/2addr v0, v1

    .line 106
    nop

    .line 126
    :goto_35
    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2d  #00000002
        :pswitch_29  #00000003
        :pswitch_25  #00000004
        :pswitch_1e  #00000005
        :pswitch_17  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method

.method public static getMaxTextureSize()I
    .registers 1

    .line 646
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return v0
.end method

.method private loadChar(I)Z
    .registers 4
    .param p1, "c"  # I

    .line 130
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    return v0
.end method

.method private loadChar(II)Z
    .registers 4
    .param p1, "c"  # I
    .param p2, "flags"  # I

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(II)Z

    move-result v0

    return v0
.end method

.method public static setMaxTextureSize(I)V
    .registers 1
    .param p0, "texSize"  # I

    .line 640
    sput p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    .line 641
    return-void
.end method


# virtual methods
.method protected createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .registers 37
    .param p1, "c"  # C
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .param p3, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    .param p4, "stroker"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .param p5, "baseLine"  # F
    .param p6, "packer"  # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    .line 484
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_19

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v7

    :goto_1a
    move v9, v0

    .line 485
    .local v9, "missing":Z
    const/4 v10, 0x0

    if-eqz v9, :cond_1f

    return-object v10

    .line 487
    :cond_1f
    invoke-direct {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-nez v0, :cond_2a

    return-object v10

    .line 489
    :cond_2a
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v11

    .line 490
    .local v11, "slot":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v12

    .line 492
    .local v12, "mainGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    :try_start_34
    iget-boolean v0, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z
    :try_end_36
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_34 .. :try_end_36} :catch_308

    if-eqz v0, :cond_42

    :try_start_38
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I
    :try_end_3a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_3a} :catch_3b

    goto :goto_44

    .line 493
    :catch_3b
    move-exception v0

    move-object v7, v3

    move/from16 v18, v9

    move-object v3, v1

    goto/16 :goto_30d

    .line 492
    :cond_42
    :try_start_42
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_44
    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V
    :try_end_47
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_42 .. :try_end_47} :catch_308

    .line 497
    nop

    .line 498
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v0

    .line 499
    .local v0, "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v13, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v14, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->gamma:F

    invoke-virtual {v0, v10, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 501
    .local v10, "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v13

    if-eqz v13, :cond_21e

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v13

    if-eqz v13, :cond_21e

    .line 502
    const/4 v13, 0x0

    .local v13, "offsetX":I
    const/4 v14, 0x0

    .line 503
    .local v14, "offsetY":I
    iget v15, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_bc

    .line 505
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v15

    .local v15, "top":I
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v17

    .line 506
    .local v17, "left":I
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v8

    .line 507
    .local v8, "borderGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    move/from16 v18, v9

    move-object/from16 v9, p4

    .end local v9  # "missing":Z
    .local v18, "missing":Z
    invoke-virtual {v8, v9, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->strokeBorder(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;Z)V

    .line 508
    iget-boolean v7, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z

    if-eqz v7, :cond_86

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    goto :goto_88

    :cond_86
    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_88
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V

    .line 509
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v7

    sub-int v13, v17, v7

    .line 510
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v7

    sub-int v7, v15, v7

    neg-int v14, v7

    .line 513
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v7

    .line 514
    .local v7, "borderBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move/from16 v19, v15

    .end local v15  # "top":I
    .local v19, "top":I
    iget-object v15, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderGamma:F

    invoke-virtual {v7, v9, v15, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    .line 517
    .local v3, "borderPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v9, 0x0

    .local v9, "i":I
    iget v15, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    .local v15, "n":I
    :goto_ab
    if-ge v9, v15, :cond_b3

    .line 518
    invoke-virtual {v3, v10, v13, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 520
    .end local v9  # "i":I
    .end local v15  # "n":I
    :cond_b3
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 521
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    .line 522
    move-object v10, v3

    .line 523
    move-object v12, v8

    goto :goto_be

    .line 503
    .end local v3  # "borderPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v7  # "borderBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .end local v8  # "borderGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    .end local v17  # "left":I
    .end local v18  # "missing":Z
    .end local v19  # "top":I
    .local v9, "missing":Z
    :cond_bc
    move/from16 v18, v9

    .line 526
    .end local v9  # "missing":Z
    .restart local v18  # "missing":Z
    :goto_be
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    if-nez v3, :cond_e5

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    if-eqz v3, :cond_c7

    goto :goto_e5

    .line 558
    :cond_c7
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v3, v3, v16

    if-nez v3, :cond_db

    .line 560
    const/4 v3, 0x0

    .local v3, "i":I
    iget v7, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "n":I
    :goto_d2
    if-ge v3, v7, :cond_db

    .line 561
    const/4 v8, 0x0

    invoke-virtual {v10, v10, v8, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_d2

    .line 564
    .end local v3  # "i":I
    .end local v7  # "n":I
    :cond_db
    move-object/from16 v22, v0

    move-object/from16 v17, v12

    move/from16 v19, v13

    move/from16 v20, v14

    goto/16 :goto_1da

    .line 527
    :cond_e5
    :goto_e5
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    .local v3, "mainW":I
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    .line 528
    .local v7, "mainH":I
    iget v8, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "shadowOffsetX":I
    iget v15, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 529
    .local v15, "shadowOffsetY":I
    iget v9, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v3

    move-object/from16 v17, v12

    .end local v12  # "mainGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    .local v9, "shadowW":I
    .local v17, "mainGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v7

    .line 530
    .local v12, "shadowH":I
    move/from16 v19, v13

    .end local v13  # "offsetX":I
    .local v19, "offsetX":I
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    move/from16 v20, v14

    .end local v14  # "offsetY":I
    .local v20, "offsetY":I
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v14

    invoke-direct {v13, v9, v12, v14}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 532
    .local v13, "shadowPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    iget-object v14, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    .line 533
    .local v14, "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    move/from16 v21, v12

    .end local v12  # "shadowH":I
    .local v21, "shadowH":I
    iget v12, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 534
    .local v12, "a":F
    cmpl-float v16, v12, v16

    if-eqz v16, :cond_1b1

    .line 535
    iget v6, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000  # 255.0f

    mul-float v6, v6, v16

    float-to-int v6, v6

    int-to-byte v6, v6

    move-object/from16 v22, v0

    .end local v0  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .local v6, "r":B
    .local v22, "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v0, v0, v16

    float-to-int v0, v0

    int-to-byte v0, v0

    .local v0, "g":B
    iget v1, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v16

    float-to-int v1, v1

    int-to-byte v1, v1

    .line 536
    .local v1, "b":B
    move-object/from16 v16, v14

    .end local v14  # "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    .local v16, "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 537
    .local v14, "mainPixels":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 538
    .local v5, "shadowPixels":Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    move/from16 v2, v23

    .local v2, "y":I
    :goto_145
    if-ge v2, v7, :cond_1a6

    .line 539
    add-int v23, v2, v15

    mul-int v23, v23, v9

    add-int v23, v23, v8

    .line 540
    .local v23, "shadowRow":I
    const/16 v24, 0x0

    move/from16 v25, v7

    move/from16 v7, v24

    .local v7, "x":I
    .local v25, "mainH":I
    :goto_153
    if-ge v7, v3, :cond_199

    .line 541
    mul-int v24, v3, v2

    add-int v24, v24, v7

    mul-int/lit8 v24, v24, 0x4

    .line 542
    .local v24, "mainPixel":I
    move/from16 v26, v3

    .end local v3  # "mainW":I
    .local v26, "mainW":I
    add-int/lit8 v3, v24, 0x3

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 543
    .local v3, "mainA":B
    if-nez v3, :cond_16c

    move/from16 v29, v0

    move/from16 v27, v6

    move/from16 v28, v8

    goto :goto_18e

    .line 544
    :cond_16c
    add-int v27, v23, v7

    move/from16 v28, v8

    .end local v8  # "shadowOffsetX":I
    .local v28, "shadowOffsetX":I
    mul-int/lit8 v8, v27, 0x4

    .line 545
    .local v8, "shadowPixel":I
    invoke-virtual {v5, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 546
    move/from16 v27, v6

    .end local v6  # "r":B
    .local v27, "r":B
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {v5, v6, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 547
    add-int/lit8 v6, v8, 0x2

    invoke-virtual {v5, v6, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 548
    add-int/lit8 v6, v8, 0x3

    move/from16 v29, v0

    .end local v0  # "g":B
    .local v29, "g":B
    and-int/lit16 v0, v3, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v12

    float-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {v5, v6, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 540
    .end local v3  # "mainA":B
    .end local v8  # "shadowPixel":I
    .end local v24  # "mainPixel":I
    :goto_18e
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v26

    move/from16 v6, v27

    move/from16 v8, v28

    move/from16 v0, v29

    goto :goto_153

    .end local v26  # "mainW":I
    .end local v27  # "r":B
    .end local v28  # "shadowOffsetX":I
    .end local v29  # "g":B
    .restart local v0  # "g":B
    .local v3, "mainW":I
    .restart local v6  # "r":B
    .local v8, "shadowOffsetX":I
    :cond_199
    move/from16 v29, v0

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, v8

    .line 538
    .end local v0  # "g":B
    .end local v3  # "mainW":I
    .end local v6  # "r":B
    .end local v7  # "x":I
    .end local v8  # "shadowOffsetX":I
    .end local v23  # "shadowRow":I
    .restart local v26  # "mainW":I
    .restart local v27  # "r":B
    .restart local v28  # "shadowOffsetX":I
    .restart local v29  # "g":B
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v25

    goto :goto_145

    .end local v25  # "mainH":I
    .end local v26  # "mainW":I
    .end local v27  # "r":B
    .end local v28  # "shadowOffsetX":I
    .end local v29  # "g":B
    .restart local v0  # "g":B
    .restart local v3  # "mainW":I
    .restart local v6  # "r":B
    .local v7, "mainH":I
    .restart local v8  # "shadowOffsetX":I
    :cond_1a6
    move/from16 v29, v0

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v7

    move/from16 v28, v8

    .end local v0  # "g":B
    .end local v3  # "mainW":I
    .end local v6  # "r":B
    .end local v7  # "mainH":I
    .end local v8  # "shadowOffsetX":I
    .restart local v25  # "mainH":I
    .restart local v26  # "mainW":I
    .restart local v27  # "r":B
    .restart local v28  # "shadowOffsetX":I
    .restart local v29  # "g":B
    goto :goto_1bb

    .line 534
    .end local v1  # "b":B
    .end local v2  # "y":I
    .end local v5  # "shadowPixels":Ljava/nio/ByteBuffer;
    .end local v16  # "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v22  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .end local v25  # "mainH":I
    .end local v26  # "mainW":I
    .end local v27  # "r":B
    .end local v28  # "shadowOffsetX":I
    .end local v29  # "g":B
    .local v0, "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .restart local v3  # "mainW":I
    .restart local v7  # "mainH":I
    .restart local v8  # "shadowOffsetX":I
    .local v14, "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_1b1
    move-object/from16 v22, v0

    move/from16 v26, v3

    move/from16 v25, v7

    move/from16 v28, v8

    move-object/from16 v16, v14

    .line 554
    .end local v0  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .end local v3  # "mainW":I
    .end local v7  # "mainH":I
    .end local v8  # "shadowOffsetX":I
    .end local v14  # "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16  # "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v22  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .restart local v25  # "mainH":I
    .restart local v26  # "mainW":I
    .restart local v28  # "shadowOffsetX":I
    :goto_1bb
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    .local v1, "n":I
    :goto_1be
    if-ge v0, v1, :cond_1d5

    .line 555
    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    neg-int v5, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v13, v10, v2, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1be

    .line 556
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_1d5
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 557
    move-object v0, v13

    .line 558
    .end local v9  # "shadowW":I
    .end local v10  # "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v12  # "a":F
    .end local v13  # "shadowPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v15  # "shadowOffsetY":I
    .end local v16  # "shadowColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v21  # "shadowH":I
    .end local v25  # "mainH":I
    .end local v26  # "mainW":I
    .end local v28  # "shadowOffsetX":I
    .local v0, "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    move-object v10, v0

    .line 564
    .end local v0  # "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v10  # "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_1da
    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    if-gtz v0, :cond_1ee

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    if-gtz v0, :cond_1ee

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    if-gtz v0, :cond_1ee

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    if-lez v0, :cond_1eb

    goto :goto_1ee

    :cond_1eb
    move-object/from16 v12, v17

    goto :goto_222

    .line 565
    :cond_1ee
    :goto_1ee
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    add-int/2addr v1, v2

    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    add-int/2addr v1, v2

    .line 566
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    add-int/2addr v2, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    add-int/2addr v2, v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 567
    .local v0, "padPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 568
    iget v1, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    invoke-virtual {v0, v10, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 569
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 570
    move-object v10, v0

    move-object/from16 v12, v17

    goto :goto_222

    .line 501
    .end local v17  # "mainGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    .end local v18  # "missing":Z
    .end local v19  # "offsetX":I
    .end local v20  # "offsetY":I
    .end local v22  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .local v0, "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .local v9, "missing":Z
    .local v12, "mainGlyph":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    :cond_21e
    move-object/from16 v22, v0

    move/from16 v18, v9

    .line 574
    .end local v0  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .end local v9  # "missing":Z
    .restart local v18  # "missing":Z
    .restart local v22  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    :goto_222
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    .line 575
    .local v0, "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 576
    .local v1, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move/from16 v2, p1

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 577
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 578
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 579
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 580
    iget-boolean v3, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v3, :cond_251

    .line 581
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v3

    neg-int v3, v3

    move/from16 v5, p5

    float-to-int v6, v5

    add-int/2addr v3, v6

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_25f

    .line 583
    :cond_251
    move/from16 v5, p5

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v6

    sub-int/2addr v3, v6

    neg-int v3, v3

    float-to-int v6, v5

    sub-int/2addr v3, v6

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 584
    :goto_25f
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v3

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    float-to-int v6, v6

    add-int/2addr v3, v6

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 586
    move-object/from16 v3, p0

    iget-boolean v6, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v6, :cond_2c5

    .line 587
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 588
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 589
    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 590
    .local v6, "buf":Ljava/nio/ByteBuffer;
    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v7

    .line 591
    .local v7, "whiteIntBits":I
    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v8

    .line 592
    .local v8, "clearIntBits":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_28f
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-ge v9, v13, :cond_2c2

    .line 593
    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v13

    mul-int/2addr v13, v9

    .line 594
    .local v13, "idx":I
    const/4 v14, 0x0

    .local v14, "w":I
    :goto_299
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move-object/from16 v16, v0

    .end local v0  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .local v16, "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v15, v0

    if-ge v14, v15, :cond_2bd

    .line 595
    div-int/lit8 v0, v14, 0x8

    add-int/2addr v0, v13

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    rem-int/lit8 v15, v14, 0x8

    rsub-int/lit8 v15, v15, 0x7

    ushr-int/2addr v0, v15

    const/4 v15, 0x1

    and-int/2addr v0, v15

    .line 596
    .local v0, "bit":I
    if-ne v0, v15, :cond_2b4

    move v15, v7

    goto :goto_2b5

    :cond_2b4
    move v15, v8

    :goto_2b5
    invoke-virtual {v10, v14, v9, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    .line 594
    .end local v0  # "bit":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    goto :goto_299

    .line 592
    .end local v13  # "idx":I
    .end local v14  # "w":I
    :cond_2bd
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    goto :goto_28f

    .end local v16  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .local v0, "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    :cond_2c2
    move-object/from16 v16, v0

    .end local v0  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .restart local v16  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    goto :goto_2c7

    .line 586
    .end local v6  # "buf":Ljava/nio/ByteBuffer;
    .end local v7  # "whiteIntBits":I
    .end local v8  # "clearIntBits":I
    .end local v9  # "h":I
    .end local v16  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .restart local v0  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    :cond_2c5
    move-object/from16 v16, v0

    .line 601
    .end local v0  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .restart local v16  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    :goto_2c7
    move-object/from16 v6, p6

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    .line 602
    .local v0, "rect":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 603
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v7, v7

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 604
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v7, v7

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 607
    iget-boolean v7, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    if-eqz v7, :cond_2ff

    move-object/from16 v7, p2

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    if-eqz v8, :cond_301

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    if-gt v8, v9, :cond_301

    .line 608
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v13, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v14, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v6, v8, v9, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    goto :goto_301

    .line 607
    :cond_2ff
    move-object/from16 v7, p2

    .line 610
    :cond_301
    :goto_301
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 611
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    .line 613
    return-object v1

    .line 493
    .end local v0  # "rect":Lcom/badlogic/gdx/math/Rectangle;
    .end local v1  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v10  # "mainPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v16  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .end local v18  # "missing":Z
    .end local v22  # "mainBitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .local v9, "missing":Z
    :catch_308
    move-exception v0

    move-object v7, v3

    move/from16 v18, v9

    move-object v3, v1

    .line 494
    .end local v9  # "missing":Z
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v18  # "missing":Z
    :goto_30d
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    .line 495
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t render char: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FreeTypeFontGenerator"

    invoke-interface {v1, v9, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-object v10
.end method

.method public dispose()V
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->dispose()V

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->dispose()V

    .line 625
    return-void
.end method

.method public generateData(I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 4
    .param p1, "size"  # I

    .line 273
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 274
    .local v0, "parameter":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 275
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object v1

    return-object v1
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 3
    .param p1, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    .line 279
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object v0

    return-object v0
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .registers 29
    .param p1, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    .line 291
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->name:Ljava/lang/String;

    .line 292
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 293
    .local v10, "characters":[C
    array-length v11, v10

    .line 294
    .local v11, "charactersLength":I
    iget-boolean v12, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 295
    .local v12, "incremental":Z
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v13

    .line 297
    .local v13, "flags":I
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 300
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v15

    .line 301
    .local v15, "fontMetrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
    iget-boolean v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    iput-boolean v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->flipped:Z

    .line 302
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 303
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->descent:F

    .line 304
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    .line 305
    iget v6, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 308
    .local v6, "baseLine":F
    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    const/4 v1, 0x0

    const/16 v5, 0x20

    if-eqz v0, :cond_a7

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a7

    .line 309
    const/16 v0, 0x20

    .local v0, "c":I
    :goto_76
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getNumGlyphs()I

    move-result v2

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_a7

    .line 310
    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 311
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    .line 312
    .local v2, "lh":I
    int-to-float v3, v2

    iget v4, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a0

    int-to-float v3, v2

    goto :goto_a2

    :cond_a0
    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    :goto_a2
    iput v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    .line 309
    .end local v2  # "lh":I
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 316
    .end local v0  # "c":I
    :cond_a7
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    .line 319
    invoke-direct {v7, v5, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-nez v0, :cond_c8

    const/16 v0, 0x6c

    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_c8

    .line 322
    :cond_be
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    goto :goto_dd

    .line 320
    :cond_c8
    :goto_c8
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    .line 326
    :goto_dd
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xChars:[C

    array-length v2, v0

    move v3, v14

    :goto_e1
    if-ge v3, v2, :cond_104

    aget-char v4, v0, v3

    .line 327
    .local v4, "xChar":C
    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v16

    if-nez v16, :cond_ee

    .line 326
    .end local v4  # "xChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 328
    .restart local v4  # "xChar":C
    :cond_ee
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    .line 329
    nop

    .line 331
    .end local v4  # "xChar":C
    :cond_104
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3e3

    .line 334
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capChars:[C

    array-length v2, v0

    move v3, v14

    :goto_10e
    if-ge v3, v2, :cond_138

    aget-char v4, v0, v3

    .line 335
    .local v4, "capChar":C
    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v16

    if-nez v16, :cond_11b

    .line 334
    .end local v4  # "capChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    .line 336
    .restart local v4  # "capChar":C
    :cond_11b
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    .line 337
    nop

    .line 339
    .end local v4  # "capChar":C
    :cond_138
    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_14d

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_145

    goto :goto_14d

    :cond_145
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No cap character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_14d
    :goto_14d
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    sub-float/2addr v0, v2

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 342
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    .line 343
    iget-boolean v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v0, :cond_167

    .line 344
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    .line 345
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    .line 348
    :cond_167
    const/4 v0, 0x0

    .line 350
    .local v0, "ownsAtlas":Z
    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    .line 352
    .local v2, "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    if-nez v2, :cond_1d5

    .line 356
    if-eqz v12, :cond_178

    .line 357
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    .line 358
    .local v3, "size":I
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    move/from16 v16, v6

    .local v4, "packStrategy":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;
    goto :goto_1a0

    .line 360
    .end local v3  # "size":I
    .end local v4  # "packStrategy":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;
    :cond_178
    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 361
    .local v3, "maxGlyphHeight":I
    mul-int v4, v3, v3

    mul-int/2addr v4, v11

    move/from16 v16, v6

    .end local v6  # "baseLine":F
    .local v16, "baseLine":F
    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 362
    .local v4, "size":I
    sget v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    if-lez v5, :cond_199

    sget v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 363
    :cond_199
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;-><init>()V

    move v3, v4

    move-object v4, v5

    .line 365
    .local v3, "size":I
    .local v4, "packStrategy":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;
    :goto_1a0
    const/4 v0, 0x1

    .line 366
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    sget-object v21, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v5

    move/from16 v19, v3

    move/from16 v20, v3

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    move-object v2, v5

    .line 367
    iget-object v5, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 368
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput v1, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 369
    iget v5, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_1d1

    .line 370
    iget-object v5, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 371
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput v1, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 375
    .end local v3  # "size":I
    .end local v4  # "packStrategy":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;
    :cond_1d1
    move/from16 v18, v0

    move-object v5, v2

    goto :goto_1da

    .line 352
    .end local v16  # "baseLine":F
    .restart local v6  # "baseLine":F
    :cond_1d5
    move/from16 v16, v6

    .end local v6  # "baseLine":F
    .restart local v16  # "baseLine":F
    move/from16 v18, v0

    move-object v5, v2

    .line 375
    .end local v0  # "ownsAtlas":Z
    .end local v2  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .local v5, "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .local v18, "ownsAtlas":Z
    :goto_1da
    if-eqz v12, :cond_1e5

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, v11, 0x20

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 377
    :cond_1e5
    const/4 v0, 0x0

    .line 378
    .local v0, "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_20f

    .line 379
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-result-object v0

    .line 380
    iget v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/high16 v2, 0x42800000  # 64.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-boolean v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v2, :cond_1ff

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    goto :goto_201

    :cond_1ff
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    :goto_201
    iget-boolean v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v3, :cond_208

    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    goto :goto_20a

    :cond_208
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    :goto_20a
    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->set(IIII)V

    move-object v6, v0

    goto :goto_210

    .line 378
    :cond_20f
    move-object v6, v0

    .line 386
    .end local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .local v6, "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    :goto_210
    new-array v4, v11, [I

    .line 387
    .local v4, "heights":[I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_214
    if-ge v3, v11, :cond_27c

    .line 388
    aget-char v2, v10, v3

    .line 390
    .local v2, "c":C
    invoke-direct {v7, v2, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-eqz v0, :cond_231

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    goto :goto_232

    :cond_231
    move v0, v14

    :goto_232
    move/from16 v19, v0

    .line 391
    .local v19, "height":I
    aput v19, v4, v3

    .line 393
    if-nez v2, :cond_269

    .line 394
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v20, v2

    .end local v2  # "c":C
    .local v20, "c":C
    move-object/from16 v2, p2

    move/from16 v21, v3

    .end local v3  # "i":I
    .local v21, "i":I
    move-object/from16 v3, p1

    move-object/from16 v25, v4

    .end local v4  # "heights":[I
    .local v25, "heights":[I
    move-object v4, v6

    move-object/from16 v22, v5

    .end local v5  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .local v22, "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    move/from16 v5, v16

    move-object/from16 v17, v6

    .end local v6  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .local v17, "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 395
    .local v0, "missingGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_273

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-eqz v1, :cond_273

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v1, :cond_273

    .line 396
    invoke-virtual {v9, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 397
    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 398
    if-eqz v12, :cond_273

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_273

    .line 393
    .end local v0  # "missingGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v20  # "c":C
    .end local v21  # "i":I
    .end local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local v25  # "heights":[I
    .restart local v2  # "c":C
    .restart local v3  # "i":I
    .restart local v4  # "heights":[I
    .restart local v5  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v6  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    :cond_269
    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v25, v4

    move-object/from16 v22, v5

    move-object/from16 v17, v6

    .line 387
    .end local v2  # "c":C
    .end local v3  # "i":I
    .end local v4  # "heights":[I
    .end local v5  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local v6  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v19  # "height":I
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v21  # "i":I
    .restart local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v25  # "heights":[I
    :cond_273
    :goto_273
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v6, v17

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    .end local v21  # "i":I
    .restart local v3  # "i":I
    goto :goto_214

    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local v25  # "heights":[I
    .restart local v4  # "heights":[I
    .restart local v5  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v6  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    :cond_27c
    move/from16 v21, v3

    move-object/from16 v25, v4

    move-object/from16 v22, v5

    move-object/from16 v17, v6

    .line 402
    .end local v3  # "i":I
    .end local v4  # "heights":[I
    .end local v5  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local v6  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v25  # "heights":[I
    move-object/from16 v6, v25

    .end local v25  # "heights":[I
    .local v6, "heights":[I
    array-length v0, v6

    move v5, v0

    .line 403
    .local v5, "heightsCount":I
    :goto_288
    if-lez v5, :cond_2e5

    .line 404
    const/4 v0, 0x0

    .local v0, "best":I
    aget v1, v6, v14

    .line 405
    .local v1, "maxHeight":I
    const/4 v2, 0x1

    move/from16 v19, v0

    move v4, v1

    .end local v0  # "best":I
    .end local v1  # "maxHeight":I
    .local v2, "i":I
    .local v4, "maxHeight":I
    .local v19, "best":I
    :goto_291
    if-ge v2, v5, :cond_29f

    .line 406
    aget v0, v6, v2

    .line 407
    .local v0, "height":I
    if-le v0, v4, :cond_29c

    .line 408
    move v1, v0

    .line 409
    .end local v4  # "maxHeight":I
    .restart local v1  # "maxHeight":I
    move v3, v2

    move v4, v1

    move/from16 v19, v3

    .line 405
    .end local v0  # "height":I
    .end local v1  # "maxHeight":I
    .restart local v4  # "maxHeight":I
    :cond_29c
    add-int/lit8 v2, v2, 0x1

    goto :goto_291

    .line 413
    .end local v2  # "i":I
    :cond_29f
    aget-char v3, v10, v19

    .line 414
    .local v3, "c":C
    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-nez v0, :cond_2cc

    .line 415
    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, p2

    move v14, v3

    .end local v3  # "c":C
    .local v14, "c":C
    move-object/from16 v3, p1

    move/from16 v21, v4

    .end local v4  # "maxHeight":I
    .local v21, "maxHeight":I
    move-object/from16 v4, v17

    move/from16 v23, v5

    .end local v5  # "heightsCount":I
    .local v23, "heightsCount":I
    move/from16 v5, v16

    move-object/from16 v24, v6

    .end local v6  # "heights":[I
    .local v24, "heights":[I
    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 416
    .local v0, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_2d3

    .line 417
    invoke-virtual {v9, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 418
    if-eqz v12, :cond_2d3

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2d3

    .line 414
    .end local v0  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v14  # "c":C
    .end local v21  # "maxHeight":I
    .end local v23  # "heightsCount":I
    .end local v24  # "heights":[I
    .restart local v3  # "c":C
    .restart local v4  # "maxHeight":I
    .restart local v5  # "heightsCount":I
    .restart local v6  # "heights":[I
    :cond_2cc
    move v14, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    .line 422
    .end local v3  # "c":C
    .end local v4  # "maxHeight":I
    .end local v5  # "heightsCount":I
    .end local v6  # "heights":[I
    .restart local v14  # "c":C
    .restart local v21  # "maxHeight":I
    .restart local v23  # "heightsCount":I
    .restart local v24  # "heights":[I
    :cond_2d3
    :goto_2d3
    add-int/lit8 v5, v23, -0x1

    .line 423
    .end local v23  # "heightsCount":I
    .restart local v5  # "heightsCount":I
    aget v0, v24, v5

    aput v0, v24, v19

    .line 424
    aget-char v0, v10, v19

    .line 425
    .local v0, "tmpChar":C
    aget-char v1, v10, v5

    aput-char v1, v10, v19

    .line 426
    aput-char v0, v10, v5

    .line 427
    .end local v0  # "tmpChar":C
    .end local v14  # "c":C
    .end local v19  # "best":I
    .end local v21  # "maxHeight":I
    move-object/from16 v6, v24

    const/4 v14, 0x0

    goto :goto_288

    .line 429
    .end local v24  # "heights":[I
    .restart local v6  # "heights":[I
    :cond_2e5
    move/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5  # "heightsCount":I
    .end local v6  # "heights":[I
    .restart local v23  # "heightsCount":I
    .restart local v24  # "heights":[I
    move-object/from16 v0, v17

    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .local v0, "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    if-eqz v0, :cond_2f2

    if-nez v12, :cond_2f2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->dispose()V

    .line 431
    :cond_2f2
    if-eqz v12, :cond_2ff

    .line 432
    iput-object v7, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    .line 433
    iput-object v8, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->parameter:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    .line 434
    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->stroker:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    .line 435
    move-object/from16 v2, v22

    .end local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .local v2, "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    iput-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    goto :goto_301

    .line 431
    .end local v2  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :cond_2ff
    move-object/from16 v2, v22

    .line 439
    .end local v22  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .restart local v2  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    :goto_301
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    iget-object v3, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->hasKerning()Z

    move-result v3

    and-int/2addr v1, v3

    iput-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    .line 440
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    if-eqz v1, :cond_39e

    .line 441
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_311
    if-ge v1, v11, :cond_395

    .line 442
    aget-char v3, v10, v1

    .line 443
    .local v3, "firstChar":C
    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 444
    .local v4, "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v4, :cond_326

    move-object/from16 v17, v0

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v12

    const/4 v4, 0x0

    goto/16 :goto_389

    .line 445
    :cond_326
    iget-object v5, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v5

    .line 446
    .local v5, "firstIndex":I
    move v6, v1

    .local v6, "ii":I
    :goto_32d
    if-ge v6, v11, :cond_37e

    .line 447
    aget-char v14, v10, v6

    .line 448
    .local v14, "secondChar":C
    move-object/from16 v17, v0

    .end local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 449
    .local v0, "second":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v0, :cond_343

    move-object/from16 v25, v4

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v12

    const/4 v4, 0x0

    goto :goto_371

    .line 450
    :cond_343
    move-object/from16 v19, v10

    .end local v10  # "characters":[C
    .local v19, "characters":[C
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v10

    .line 452
    .local v10, "secondIndex":I
    move/from16 v21, v11

    .end local v11  # "charactersLength":I
    .local v21, "charactersLength":I
    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move/from16 v22, v12

    const/4 v12, 0x0

    .end local v12  # "incremental":Z
    .local v22, "incremental":Z
    invoke-virtual {v11, v5, v10, v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v11

    .line 453
    .local v11, "kerning":I
    if-eqz v11, :cond_35f

    invoke-static {v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v12

    invoke-virtual {v4, v14, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    .line 455
    :cond_35f
    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-object/from16 v25, v4

    const/4 v4, 0x0

    .end local v4  # "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v25, "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-virtual {v12, v10, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v11

    .line 456
    if-eqz v11, :cond_371

    invoke-static {v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v12

    invoke-virtual {v0, v3, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    .line 446
    .end local v0  # "second":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v10  # "secondIndex":I
    .end local v11  # "kerning":I
    .end local v14  # "secondChar":C
    :cond_371
    :goto_371
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v10, v19

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v4, v25

    goto :goto_32d

    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v19  # "characters":[C
    .end local v21  # "charactersLength":I
    .end local v22  # "incremental":Z
    .end local v25  # "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v0, "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v4  # "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .local v10, "characters":[C
    .local v11, "charactersLength":I
    .restart local v12  # "incremental":Z
    :cond_37e
    move-object/from16 v17, v0

    move-object/from16 v25, v4

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v12

    const/4 v4, 0x0

    .line 441
    .end local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v3  # "firstChar":C
    .end local v4  # "first":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v5  # "firstIndex":I
    .end local v6  # "ii":I
    .end local v10  # "characters":[C
    .end local v11  # "charactersLength":I
    .end local v12  # "incremental":Z
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v19  # "characters":[C
    .restart local v21  # "charactersLength":I
    .restart local v22  # "incremental":Z
    :goto_389
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    move-object/from16 v10, v19

    move/from16 v11, v21

    move/from16 v12, v22

    goto/16 :goto_311

    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v19  # "characters":[C
    .end local v21  # "charactersLength":I
    .end local v22  # "incremental":Z
    .restart local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v10  # "characters":[C
    .restart local v11  # "charactersLength":I
    .restart local v12  # "incremental":Z
    :cond_395
    move-object/from16 v17, v0

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v12

    .end local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v10  # "characters":[C
    .end local v11  # "charactersLength":I
    .end local v12  # "incremental":Z
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v19  # "characters":[C
    .restart local v21  # "charactersLength":I
    .restart local v22  # "incremental":Z
    goto :goto_3a6

    .line 440
    .end local v1  # "i":I
    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v19  # "characters":[C
    .end local v21  # "charactersLength":I
    .end local v22  # "incremental":Z
    .restart local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v10  # "characters":[C
    .restart local v11  # "charactersLength":I
    .restart local v12  # "incremental":Z
    :cond_39e
    move-object/from16 v17, v0

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v12

    .line 462
    .end local v0  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v10  # "characters":[C
    .end local v11  # "charactersLength":I
    .end local v12  # "incremental":Z
    .restart local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .restart local v19  # "characters":[C
    .restart local v21  # "charactersLength":I
    .restart local v22  # "incremental":Z
    :goto_3a6
    if-eqz v18, :cond_3ba

    .line 463
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 464
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v4, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 468
    :cond_3ba
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 469
    .local v1, "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v1, :cond_3d5

    .line 470
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    move-object v1, v3

    .line 471
    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    float-to-int v3, v3

    iget v4, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 472
    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 473
    invoke-virtual {v9, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 475
    :cond_3d5
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v0, :cond_3e2

    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v0, v0

    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->padRight:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 477
    :cond_3e2
    return-object v9

    .line 331
    .end local v1  # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v2  # "packer":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .end local v16  # "baseLine":F
    .end local v17  # "stroker":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .end local v18  # "ownsAtlas":Z
    .end local v19  # "characters":[C
    .end local v21  # "charactersLength":I
    .end local v22  # "incremental":Z
    .end local v23  # "heightsCount":I
    .end local v24  # "heights":[I
    .local v6, "baseLine":F
    .restart local v10  # "characters":[C
    .restart local v11  # "charactersLength":I
    .restart local v12  # "incremental":Z
    :cond_3e3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No x-height character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 3
    .param p1, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    .line 152
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    return-object v0
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 11
    .param p1, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    .param p2, "data"  # Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    .line 159
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 160
    .local v0, "updateTextureRegions":Z
    :goto_d
    if-eqz v0, :cond_16

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 161
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    .line 162
    if-eqz v0, :cond_28

    .line 163
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v7, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 164
    :cond_28
    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 165
    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p2, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->newBitmapFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    .line 166
    .local v3, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-nez v4, :cond_3b

    move v1, v2

    :cond_3b
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setOwnsTexture(Z)V

    .line 167
    return-object v3

    .line 164
    .end local v3  # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_3f
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unable to create a font with no texture regions."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateGlyphAndBitmap(IIZ)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .registers 13
    .param p1, "c"  # I
    .param p2, "size"  # I
    .param p3, "flip"  # Z

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 221
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v1

    .line 222
    .local v1, "fontMetrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    .line 226
    .local v2, "baseline":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v3

    if-nez v3, :cond_20

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_20
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 235
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v3

    .line 239
    .local v3, "slot":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v4, :cond_35

    .line 240
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v4

    .local v4, "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    goto :goto_43

    .line 241
    .end local v4  # "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    :cond_35
    sget v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->renderGlyph(I)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 242
    const/4 v4, 0x0

    .restart local v4  # "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    goto :goto_43

    .line 244
    .end local v4  # "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    :cond_3f
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v4

    .line 247
    .restart local v4  # "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    :goto_43
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v5

    .line 249
    .local v5, "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 250
    .local v6, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v4, :cond_5b

    .line 251
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 252
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    goto :goto_5f

    .line 254
    :cond_5b
    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 255
    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 257
    :goto_5f
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapLeft()I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 258
    if-eqz p3, :cond_6e

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result v7

    neg-int v7, v7

    add-int/2addr v7, v2

    goto :goto_77

    :cond_6e
    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    sub-int/2addr v7, v2

    :goto_77
    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 259
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 260
    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 261
    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 262
    iput p1, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 264
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;)V

    .line 265
    .local v0, "result":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 266
    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    .line 267
    return-object v0

    .line 232
    .end local v0  # "result":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .end local v3  # "slot":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    .end local v4  # "bitmap":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .end local v5  # "metrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .end local v6  # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_93
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unable to load character!"

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newBitmapFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 5
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p3, "integer"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;Z)",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;"
        }
    .end annotation

    .line 174
    .local p2, "pageRegions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0
.end method

.method public scaleForPixelHeight(I)I
    .registers 7
    .param p1, "height"  # I

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    .line 182
    .local v0, "fontMetrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    .line 183
    .local v1, "ascent":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    .line 184
    .local v2, "descent":I
    mul-int v3, p1, p1

    sub-int v4, v1, v2

    div-int/2addr v3, v4

    return v3
.end method

.method public scaleForPixelWidth(II)I
    .registers 10
    .param p1, "width"  # I
    .param p2, "numChars"  # I

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    .line 193
    .local v0, "fontMetrics":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getMaxAdvance()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    .line 194
    .local v1, "advance":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    .line 195
    .local v2, "ascent":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v3

    .line 196
    .local v3, "descent":I
    sub-int v4, v2, v3

    .line 197
    .local v4, "unscaledHeight":I
    mul-int v5, v4, p1

    mul-int v6, v1, p2

    div-int/2addr v5, v6

    .line 198
    .local v5, "height":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    .line 199
    return v5
.end method

.method public scaleToFitSquare(III)I
    .registers 6
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "numChars"  # I

    .line 208
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelHeight(I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelWidth(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method setPixelSizes(II)V
    .registers 5
    .param p1, "pixelWidth"  # I
    .param p2, "pixelHeight"  # I

    .line 283
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelWidth:I

    .line 284
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelHeight:I

    .line 285
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(II)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Couldn\'t set size for font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    return-object v0
.end method
