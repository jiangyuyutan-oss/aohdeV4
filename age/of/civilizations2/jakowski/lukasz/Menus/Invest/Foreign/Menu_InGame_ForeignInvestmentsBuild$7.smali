.class Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild$7;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_ForeignInvestmentsBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "isClickable"  # Z

    .line 152
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public getWidthE()I
    .registers 3

    .line 155
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Invest/Foreign/Menu_InGame_ForeignInvestmentsBuild;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
