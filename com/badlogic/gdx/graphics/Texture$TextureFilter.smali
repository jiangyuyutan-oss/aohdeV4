.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# instance fields
.field final glEnum:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x0

    const/16 v2, 0x2600

    const-string v3, "Nearest"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x1

    const/16 v2, 0x2601

    const-string v3, "Linear"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v1, "MipMap"

    const/4 v2, 0x2

    const/16 v3, 0x2703

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x3

    const/16 v2, 0x2700

    const-string v4, "MipMapNearestNearest"

    invoke-direct {v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x4

    const/16 v2, 0x2701

    const-string v4, "MipMapLinearNearest"

    invoke-direct {v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x5

    const/16 v2, 0x2702

    const-string v4, "MipMapNearestLinear"

    invoke-direct {v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v1, "MipMapLinearLinear"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 52
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    filled-new-array/range {v4 .. v10}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "glEnum"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .registers 1

    .line 52
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    return v0
.end method

.method public isMipMap()Z
    .registers 3

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    const/16 v1, 0x2600

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    const/16 v1, 0x2601

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
