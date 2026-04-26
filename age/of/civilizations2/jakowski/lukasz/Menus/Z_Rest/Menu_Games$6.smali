.class Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;
.source "Menu_Games.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 203
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public setButtonAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "isActive"  # Z

    .line 206
    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3f0ccccd  # 0.55f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 208
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games$6;->getIsClickable()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 209
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ecccccd  # 0.4f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_34

    .line 211
    :cond_1a
    if-eqz p2, :cond_1d

    goto :goto_34

    .line 214
    :cond_1d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games$6;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest/Menu_Games$6;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 215
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ef851ec  # 0.485f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 217
    :cond_34
    :goto_34
    return-void
.end method
