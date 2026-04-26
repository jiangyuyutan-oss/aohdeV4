.class Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/TextChal;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "posX"  # I
    .param p4, "posY"  # I
    .param p5, "nW"  # I
    .param p6, "nH"  # I

    .line 62
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextChal;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 65
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;->FULL_H:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;->FULL_H:Z

    .line 66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 67
    return-void
.end method

.method public actionElemPPM()V
    .registers 3

    .line 71
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_MainChallenge;->setVisibleM(Z)V

    .line 72
    return-void
.end method
