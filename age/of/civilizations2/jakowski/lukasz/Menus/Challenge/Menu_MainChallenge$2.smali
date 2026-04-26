.class Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBigCh;
.source "Menu_MainChallenge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;ILjava/lang/String;IIZ)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;
    .param p2, "id"  # I
    .param p3, "nCivTag"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "isClickable"  # Z

    .line 77
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBigCh;-><init>(ILjava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public drawMEH2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 80
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$2;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    if-eqz v0, :cond_12

    .line 81
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$2;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;->MENU_POSY_H:I

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;->drawAlwaysOverM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 83
    :cond_12
    return-void
.end method
