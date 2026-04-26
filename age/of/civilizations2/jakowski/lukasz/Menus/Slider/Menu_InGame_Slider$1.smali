.class Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Accept;
.source "Menu_InGame_Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider;IIZ)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "isClickable"  # Z

    .line 34
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Accept;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getSFXElem()I
    .registers 2

    .line 37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playMoveArmy()I

    move-result v0

    return v0
.end method
