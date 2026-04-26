.class Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBig;
.source "Menu_MM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;IIZZ)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "isClickable"  # Z
    .param p5, "drawLordFlag"  # Z

    .line 68
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBig;-><init>(IIZZ)V

    return-void
.end method


# virtual methods
.method public buildElemHover()V
    .registers 7

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "What country does this flag belong to?"

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploAZ:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM2$4;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 80
    return-void
.end method

.method public getFlagCivID()I
    .registers 2

    .line 89
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionCivID:I

    return v0
.end method

.method public getSFXElem()I
    .registers 2

    .line 84
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK2:I

    return v0
.end method
