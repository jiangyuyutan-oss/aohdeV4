.class Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 70
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/End/Menu_InGame_EndOfGame;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public getIsClickable()Z
    .registers 2

    .line 73
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
