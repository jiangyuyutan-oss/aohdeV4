.class public final enum Lcom/badlogic/gdx/graphics/Pixmap$Format;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Pixmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Pixmap$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "Alpha"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "Intensity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "LuminanceAlpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGB565"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGBA4444"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGB888"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGBA8888"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 47
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v7, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    filled-new-array/range {v3 .. v9}, [Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 4
    .param p0, "format"  # I

    .line 62
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 63
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 64
    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_12

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 65
    :cond_12
    const/4 v0, 0x6

    if-ne p0, v0, :cond_18

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 66
    :cond_18
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1e

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 67
    :cond_1e
    const/4 v0, 0x4

    if-ne p0, v0, :cond_24

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 68
    :cond_24
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Gdx2DPixmap Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .registers 4
    .param p0, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    return v1

    .line 52
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_b

    return v1

    .line 53
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_11

    const/4 v0, 0x2

    return v0

    .line 54
    :cond_11
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_17

    const/4 v0, 0x5

    return v0

    .line 55
    :cond_17
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_1d

    const/4 v0, 0x6

    return v0

    .line 56
    :cond_1d
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_23

    const/4 v0, 0x3

    return v0

    .line 57
    :cond_23
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_29

    const/4 v0, 0x4

    return v0

    .line 58
    :cond_29
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .registers 2
    .param p0, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 72
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlFormat(I)I

    move-result v0

    return v0
.end method

.method public static toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .registers 2
    .param p0, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 76
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlType(I)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 47
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 1

    .line 47
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Pixmap$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method
