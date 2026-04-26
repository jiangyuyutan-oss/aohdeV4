.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
    }
.end annotation


# static fields
.field public static FT_ENCODING_ADOBE_CUSTOM:I

.field public static FT_ENCODING_ADOBE_EXPERT:I

.field public static FT_ENCODING_ADOBE_LATIN_1:I

.field public static FT_ENCODING_ADOBE_STANDARD:I

.field public static FT_ENCODING_APPLE_ROMAN:I

.field public static FT_ENCODING_BIG5:I

.field public static FT_ENCODING_GB2312:I

.field public static FT_ENCODING_JOHAB:I

.field public static FT_ENCODING_MS_SYMBOL:I

.field public static FT_ENCODING_NONE:I

.field public static FT_ENCODING_OLD_LATIN_2:I

.field public static FT_ENCODING_SJIS:I

.field public static FT_ENCODING_UNICODE:I

.field public static FT_ENCODING_WANSUNG:I

.field public static FT_FACE_FLAG_CID_KEYED:I

.field public static FT_FACE_FLAG_EXTERNAL_STREAM:I

.field public static FT_FACE_FLAG_FAST_GLYPHS:I

.field public static FT_FACE_FLAG_FIXED_SIZES:I

.field public static FT_FACE_FLAG_FIXED_WIDTH:I

.field public static FT_FACE_FLAG_GLYPH_NAMES:I

.field public static FT_FACE_FLAG_HINTER:I

.field public static FT_FACE_FLAG_HORIZONTAL:I

.field public static FT_FACE_FLAG_KERNING:I

.field public static FT_FACE_FLAG_MULTIPLE_MASTERS:I

.field public static FT_FACE_FLAG_SCALABLE:I

.field public static FT_FACE_FLAG_SFNT:I

.field public static FT_FACE_FLAG_TRICKY:I

.field public static FT_FACE_FLAG_VERTICAL:I

.field public static FT_KERNING_DEFAULT:I

.field public static FT_KERNING_UNFITTED:I

.field public static FT_KERNING_UNSCALED:I

.field public static FT_LOAD_CROP_BITMAP:I

.field public static FT_LOAD_DEFAULT:I

.field public static FT_LOAD_FORCE_AUTOHINT:I

.field public static FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I

.field public static FT_LOAD_IGNORE_TRANSFORM:I

.field public static FT_LOAD_LINEAR_DESIGN:I

.field public static FT_LOAD_MONOCHROME:I

.field public static FT_LOAD_NO_AUTOHINT:I

.field public static FT_LOAD_NO_BITMAP:I

.field public static FT_LOAD_NO_HINTING:I

.field public static FT_LOAD_NO_RECURSE:I

.field public static FT_LOAD_NO_SCALE:I

.field public static FT_LOAD_PEDANTIC:I

.field public static FT_LOAD_RENDER:I

.field public static FT_LOAD_TARGET_LCD:I

.field public static FT_LOAD_TARGET_LCD_V:I

.field public static FT_LOAD_TARGET_LIGHT:I

.field public static FT_LOAD_TARGET_MONO:I

.field public static FT_LOAD_TARGET_NORMAL:I

.field public static FT_LOAD_VERTICAL_LAYOUT:I

.field public static FT_PIXEL_MODE_GRAY:I

.field public static FT_PIXEL_MODE_GRAY2:I

.field public static FT_PIXEL_MODE_GRAY4:I

.field public static FT_PIXEL_MODE_LCD:I

.field public static FT_PIXEL_MODE_LCD_V:I

.field public static FT_PIXEL_MODE_MONO:I

.field public static FT_PIXEL_MODE_NONE:I

.field public static FT_RENDER_MODE_LCD:I

.field public static FT_RENDER_MODE_LCD_V:I

.field public static FT_RENDER_MODE_LIGHT:I

.field public static FT_RENDER_MODE_MAX:I

.field public static FT_RENDER_MODE_MONO:I

.field public static FT_RENDER_MODE_NORMAL:I

.field public static FT_STROKER_LINECAP_BUTT:I

.field public static FT_STROKER_LINECAP_ROUND:I

.field public static FT_STROKER_LINECAP_SQUARE:I

.field public static FT_STROKER_LINEJOIN_BEVEL:I

.field public static FT_STROKER_LINEJOIN_MITER:I

.field public static FT_STROKER_LINEJOIN_MITER_FIXED:I

.field public static FT_STROKER_LINEJOIN_MITER_VARIABLE:I

.field public static FT_STROKER_LINEJOIN_ROUND:I

.field public static FT_STYLE_FLAG_BOLD:I

.field public static FT_STYLE_FLAG_ITALIC:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 835
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_NONE:I

    .line 836
    const/4 v1, 0x1

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_MONO:I

    .line 837
    const/4 v2, 0x2

    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY:I

    .line 838
    const/4 v3, 0x3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY2:I

    .line 839
    const/4 v4, 0x4

    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY4:I

    .line 840
    const/4 v5, 0x5

    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_LCD:I

    .line 841
    const/4 v6, 0x6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_LCD_V:I

    .line 847
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_NONE:I

    .line 848
    const/16 v6, 0x73

    const/16 v7, 0x79

    const/16 v8, 0x6d

    const/16 v9, 0x62

    invoke-static {v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v7

    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_MS_SYMBOL:I

    .line 849
    const/16 v7, 0x63

    const/16 v10, 0x75

    const/16 v11, 0x6e

    const/16 v12, 0x69

    invoke-static {v10, v11, v12, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v7

    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_UNICODE:I

    .line 850
    const/16 v7, 0x6a

    invoke-static {v6, v7, v12, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v10

    sput v10, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_SJIS:I

    .line 851
    const/16 v10, 0x67

    const/16 v13, 0x20

    invoke-static {v10, v9, v13, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v14

    sput v14, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_GB2312:I

    .line 852
    const/16 v14, 0x35

    invoke-static {v9, v12, v10, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v9

    sput v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_BIG5:I

    .line 853
    const/16 v9, 0x77

    const/16 v10, 0x61

    invoke-static {v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_WANSUNG:I

    .line 854
    const/16 v6, 0x6f

    const/16 v9, 0x68

    invoke-static {v7, v6, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_JOHAB:I

    .line 855
    const/16 v6, 0x41

    const/16 v7, 0x44

    const/16 v9, 0x4f

    const/16 v12, 0x42

    invoke-static {v6, v7, v9, v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v9

    sput v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_STANDARD:I

    .line 856
    const/16 v9, 0x45

    invoke-static {v6, v7, v12, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v9

    sput v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_EXPERT:I

    .line 857
    const/16 v9, 0x43

    invoke-static {v6, v7, v12, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_CUSTOM:I

    .line 858
    const/16 v6, 0x31

    const/16 v7, 0x6c

    const/16 v9, 0x74

    invoke-static {v7, v10, v9, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_LATIN_1:I

    .line 859
    const/16 v6, 0x32

    invoke-static {v7, v10, v9, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_OLD_LATIN_2:I

    .line 860
    const/16 v6, 0x72

    invoke-static {v10, v6, v8, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v6

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_APPLE_ROMAN:I

    .line 862
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SCALABLE:I

    .line 863
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    .line 864
    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_WIDTH:I

    .line 865
    const/16 v6, 0x8

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SFNT:I

    .line 866
    const/16 v7, 0x10

    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    .line 867
    sput v13, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_VERTICAL:I

    .line 868
    const/16 v8, 0x40

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_KERNING:I

    .line 869
    const/16 v8, 0x80

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FAST_GLYPHS:I

    .line 870
    const/16 v8, 0x100

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_MULTIPLE_MASTERS:I

    .line 871
    const/16 v8, 0x200

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_GLYPH_NAMES:I

    .line 872
    const/16 v8, 0x400

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_EXTERNAL_STREAM:I

    .line 873
    const/16 v8, 0x800

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HINTER:I

    .line 874
    const/16 v8, 0x1000

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_CID_KEYED:I

    .line 875
    const/16 v8, 0x2000

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_TRICKY:I

    .line 877
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_ITALIC:I

    .line 878
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_BOLD:I

    .line 880
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    .line 881
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_SCALE:I

    .line 882
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    .line 883
    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_RENDER:I

    .line 884
    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_BITMAP:I

    .line 885
    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_VERTICAL_LAYOUT:I

    .line 886
    sput v13, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    .line 887
    const/16 v6, 0x40

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_CROP_BITMAP:I

    .line 888
    const/16 v6, 0x80

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_PEDANTIC:I

    .line 889
    const/16 v6, 0x200

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I

    .line 890
    const/16 v6, 0x400

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_RECURSE:I

    .line 891
    const/16 v6, 0x800

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_TRANSFORM:I

    .line 892
    const/16 v6, 0x1000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_MONOCHROME:I

    .line 893
    const/16 v6, 0x2000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_LINEAR_DESIGN:I

    .line 894
    const v6, 0x8000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_AUTOHINT:I

    .line 896
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    .line 897
    const/high16 v6, 0x10000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    .line 898
    const/high16 v6, 0x20000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    .line 899
    const/high16 v6, 0x30000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD:I

    .line 900
    const/high16 v6, 0x40000

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD_V:I

    .line 902
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    .line 903
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LIGHT:I

    .line 904
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    .line 905
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD:I

    .line 906
    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD_V:I

    .line 907
    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MAX:I

    .line 909
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_DEFAULT:I

    .line 910
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNFITTED:I

    .line 911
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNSCALED:I

    .line 913
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    .line 914
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    .line 915
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_SQUARE:I

    .line 917
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    .line 918
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_BEVEL:I

    .line 919
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_VARIABLE:I

    .line 920
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_VARIABLE:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER:I

    .line 921
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(CCCC)I
    .registers 6
    .param p0, "a"  # C
    .param p1, "b"  # C
    .param p2, "c"  # C
    .param p3, "d"  # C

    .line 844
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method static native getLastErrorCode()I
.end method

.method public static initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
    .registers 5

    .line 924
    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v1, "gdx-freetype"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeTypeJni()J

    move-result-wide v0

    .line 926
    .local v0, "address":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 929
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;-><init>(J)V

    return-object v2

    .line 927
    :cond_1a
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t initialize FreeType library, FreeType error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native initFreeTypeJni()J
.end method

.method public static toInt(I)I
    .registers 2
    .param p0, "value"  # I

    .line 943
    add-int/lit8 v0, p0, 0x3f

    and-int/lit8 v0, v0, -0x40

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method
