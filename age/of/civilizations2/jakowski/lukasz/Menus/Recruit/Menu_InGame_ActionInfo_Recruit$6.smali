.class Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit$6;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Cost_Right_Balance;
.source "Menu_InGame_ActionInfo_Recruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I

    .line 162
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Recruit/Menu_InGame_ActionInfo_Recruit;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_Cost_Right_Balance;-><init>(Ljava/lang/String;II)V

    return-void
.end method
