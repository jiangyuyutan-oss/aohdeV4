.class Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_TakeLoan_Interest;
.source "Menu_InGame_Message_LoanRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;-><init>(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nDiploCost"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 75
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_TakeLoan_Interest;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getCostColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 83
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCostIMG()I
    .registers 2

    .line 88
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v0

    return v0
.end method

.method public getLoanIMG()I
    .registers 2

    .line 78
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->loanRe:I

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 93
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Menu_InGame_Message_LoanRequest;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
