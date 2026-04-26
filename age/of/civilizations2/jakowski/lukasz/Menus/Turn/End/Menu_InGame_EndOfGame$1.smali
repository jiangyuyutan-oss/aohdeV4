.class Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame$1;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTitleStyle;
.source "Menu_InGame_EndOfGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 43
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTitleStyle;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getColor_BG()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 46
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Victory/Menu_Victory;->VICTORIOUS:Z

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_9

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_9
    return-object v0
.end method
