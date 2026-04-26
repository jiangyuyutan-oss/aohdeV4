.class Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F$9;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc2_Special;
.source "Menu_InGame_View_F.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 127
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Desc2_Special;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 134
    const-string v0, "https://www.youtube.com/watch?v=rU0WHjHCYLQ"

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GO_TO_LINK:Ljava/lang/String;

    .line 135
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->GO_TO_LINK:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 136
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 129
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F$9;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Colors;->getColorButton(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
