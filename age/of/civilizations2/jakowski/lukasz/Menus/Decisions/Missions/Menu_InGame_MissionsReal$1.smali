.class Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_InGameAction;
.source "Menu_InGame_MissionsReal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;
    .param p2, "x0"  # Ljava/lang/String;
    .param p3, "x1"  # I
    .param p4, "x2"  # I
    .param p5, "x3"  # I
    .param p6, "x4"  # I
    .param p7, "x5"  # Z

    .line 44
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;

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
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;->setVisibleM(Z)V

    .line 51
    return-void
.end method

.method public getWidthE()I
    .registers 3

    .line 46
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Decisions/Missions/Menu_InGame_MissionsReal;->getW2()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
