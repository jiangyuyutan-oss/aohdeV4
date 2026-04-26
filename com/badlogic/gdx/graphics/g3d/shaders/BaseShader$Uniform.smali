.class public Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;
.super Ljava/lang/Object;
.source "BaseShader.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniform"
.end annotation


# instance fields
.field public final alias:Ljava/lang/String;

.field public final environmentMask:J

.field public final materialMask:J

.field public final overallMask:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"  # Ljava/lang/String;

    .line 91
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 12
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "overallMask"  # J

    .line 87
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJJ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "materialMask"  # J
    .param p4, "environmentMask"  # J

    .line 83
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .registers 8
    .param p1, "alias"  # Ljava/lang/String;
    .param p2, "materialMask"  # J
    .param p4, "environmentMask"  # J
    .param p6, "overallMask"  # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->alias:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    .line 78
    iput-wide p4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    .line 79
    iput-wide p6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    .line 80
    return-void
.end method


# virtual methods
.method public validate(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .registers 12
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"  # I
    .param p3, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 95
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_f

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v2, :cond_f

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->getMask()J

    move-result-wide v2

    goto :goto_10

    :cond_f
    move-wide v2, v0

    .line 96
    .local v2, "matFlags":J
    :goto_10
    if-eqz p3, :cond_1c

    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v4, :cond_1c

    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->getMask()J

    move-result-wide v0

    .line 97
    .local v0, "envFlags":J
    :cond_1c
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    and-long/2addr v4, v2

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3b

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    and-long/2addr v4, v0

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3b

    or-long v4, v2, v0

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    and-long/2addr v4, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    :goto_3c
    return v4
.end method
