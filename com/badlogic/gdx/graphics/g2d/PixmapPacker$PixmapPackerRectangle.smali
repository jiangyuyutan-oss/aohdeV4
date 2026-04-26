.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
.super Lcom/badlogic/gdx/math/Rectangle;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixmapPackerRectangle"
.end annotation


# instance fields
.field offsetX:I

.field offsetY:I

.field originalHeight:I

.field originalWidth:I

.field pads:[I

.field splits:[I


# direct methods
.method constructor <init>(IIII)V
    .registers 9
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 855
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    .line 857
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    .line 858
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    .line 859
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    .line 860
    return-void
.end method

.method constructor <init>(IIIIIIII)V
    .registers 13
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I
    .param p5, "left"  # I
    .param p6, "top"  # I
    .param p7, "originalWidth"  # I
    .param p8, "originalHeight"  # I

    .line 863
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 864
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    .line 865
    iput p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    .line 866
    iput p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    .line 867
    iput p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    .line 868
    return-void
.end method
