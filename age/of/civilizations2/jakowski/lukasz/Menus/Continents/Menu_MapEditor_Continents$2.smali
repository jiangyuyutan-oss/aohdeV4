.class Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;
.source "Menu_MapEditor_Continents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "nWidth"  # I

    .line 42
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Continents/Menu_MapEditor_Continents;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public getIsClickable()Z
    .registers 2

    .line 45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Continents;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
