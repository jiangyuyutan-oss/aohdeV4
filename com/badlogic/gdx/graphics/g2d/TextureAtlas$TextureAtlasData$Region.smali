.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field public degrees:I

.field public flip:Z

.field public height:I

.field public index:I

.field public left:I

.field public name:Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public offsetX:F

.field public offsetY:F

.field public originalHeight:I

.field public originalWidth:I

.field public page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

.field public rotate:Z

.field public top:I

.field public values:[[I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    return-void
.end method


# virtual methods
.method public findValue(Ljava/lang/String;)[I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_8
    if-ge v0, v1, :cond_1c

    .line 510
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->values:[[I

    aget-object v2, v2, v0

    return-object v2

    .line 509
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 512
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method
