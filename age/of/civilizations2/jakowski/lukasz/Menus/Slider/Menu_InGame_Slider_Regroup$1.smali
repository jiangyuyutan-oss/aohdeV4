.class Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Accept;
.source "Menu_InGame_Slider_Regroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup;IIZ)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "isClickable"  # Z

    .line 36
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Slider/Menu_InGame_Slider_Regroup;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_Accept;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getSFXElem()I
    .registers 2

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_REGROUP:I

    return v0
.end method
