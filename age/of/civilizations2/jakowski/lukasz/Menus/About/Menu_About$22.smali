.class Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$22;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;
.source "Menu_About.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;IIIIZ)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "isClickable"  # Z

    .line 590
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$22;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Transparent;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 593
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$22;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->onBackPressed()V

    .line 594
    return-void
.end method
