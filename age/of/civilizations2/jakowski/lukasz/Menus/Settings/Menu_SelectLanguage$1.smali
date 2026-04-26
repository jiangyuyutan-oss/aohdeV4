.class Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;
.source "Menu_SelectLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage;IIZ)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "isClickable"  # Z

    .line 58
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Menu_SelectLanguage;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag_JustFrame;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getSFXElem()I
    .registers 2

    .line 61
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK3:I

    return v0
.end method
