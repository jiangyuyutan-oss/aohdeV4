.class public Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;
.super Ljava/lang/Object;
.source "RendererSpriteBatch.java"


# instance fields
.field private begun:Z

.field public oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z

    return-void
.end method


# virtual methods
.method public begin()V
    .registers 2

    .line 12
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z

    if-nez v0, :cond_e

    .line 14
    :try_start_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 18
    goto :goto_e

    .line 16
    :catch_d
    move-exception v0

    .line 20
    :cond_e
    :goto_e
    return-void
.end method

.method public end()V
    .registers 2

    .line 23
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z

    if-eqz v0, :cond_e

    .line 25
    :try_start_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 29
    goto :goto_e

    .line 27
    :catch_d
    move-exception v0

    .line 31
    :cond_e
    :goto_e
    return-void
.end method

.method public isBegun()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begun:Z

    return v0
.end method
