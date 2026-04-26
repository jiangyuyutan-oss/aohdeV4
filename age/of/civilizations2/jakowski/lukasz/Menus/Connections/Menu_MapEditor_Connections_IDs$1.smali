.class Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.source "Menu_MapEditor_Connections_IDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iHeight"  # I
    .param p4, "moveable"  # Z
    .param p5, "resizable"  # Z

    .line 42
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 45
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v0, p3, -0x2

    add-int v3, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;->getHeightT()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;->getWidthM()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;->getHeightT()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v0, p3, -0x1

    add-int v3, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p4, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Connections/Menu_MapEditor_Connections_IDs;->getWidthM()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 50
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    invoke-super/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 53
    return-void
.end method
