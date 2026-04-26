.class public Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "ColorAttribute.java"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientColor"

.field public static final AmbientLight:J

.field public static final AmbientLightAlias:Ljava/lang/String; = "ambientLightColor"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseColor"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveColor"

.field public static final Fog:J

.field public static final FogAlias:Ljava/lang/String; = "fogColor"

.field protected static Mask:J = 0x0L

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionColor"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularColor"


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 25
    const-string v0, "diffuseColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    .line 27
    const-string v0, "specularColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    .line 29
    const-string v0, "ambientColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    .line 31
    const-string v0, "emissiveColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    .line 33
    const-string v0, "reflectionColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    .line 35
    const-string v0, "ambientLightColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    .line 37
    const-string v0, "fogColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    .line 39
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .param p1, "type"  # J

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 105
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->is(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    return-void

    .line 105
    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JFFFF)V
    .registers 8
    .param p1, "type"  # J
    .param p3, "r"  # F
    .param p4, "g"  # F
    .param p5, "b"  # F
    .param p6, "a"  # F

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 116
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p1, "type"  # J
    .param p3, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    .line 110
    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 111
    :cond_a
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V
    .registers 5
    .param p1, "copyFrom"  # Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    .line 119
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->type:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    .line 120
    return-void
.end method

.method public static final createAmbient(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 50
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createAmbient(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createAmbientLight(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 90
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createAmbientLight(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createDiffuse(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 58
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createDiffuse(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createEmissive(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 82
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createEmissive(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createFog(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 98
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createFog(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 94
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createReflection(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 74
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createReflection(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createSpecular(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 12
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 66
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createSpecular(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .registers 4
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final is(J)Z
    .registers 6
    .param p0, "mask"  # J

    .line 42
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Mask:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .registers 6
    .param p1, "o"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 136
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 137
    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 23
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .registers 2

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 129
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 130
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3b9

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v2

    add-int/2addr v1, v2

    .line 131
    .end local v0  # "result":I
    .local v1, "result":I
    return v1
.end method
