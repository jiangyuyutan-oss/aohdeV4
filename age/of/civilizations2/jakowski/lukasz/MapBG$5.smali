.class Lage/of/civilizations2/jakowski/lukasz/MapBG$5;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MapBG$WorldMap_Shaders;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapBG;->updateWorldMap_Shaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapBG;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapBG;

    .line 297
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I

    .line 300
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->nextPlayerTurnShdr:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 301
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MapBG$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapBG;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->access$300(Lage/of/civilizations2/jakowski/lukasz/MapBG;)Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MapBG$WMP;->dMP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 303
    return-void
.end method
