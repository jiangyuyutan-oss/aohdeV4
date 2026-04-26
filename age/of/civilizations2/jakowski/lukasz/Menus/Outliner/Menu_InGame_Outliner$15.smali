.class Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$15;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_PartOfHRE;
.source "Menu_InGame_Outliner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;IIII)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;
    .param p2, "nCivFlag"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I

    .line 254
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner_PartOfHRE;-><init>(IIII)V

    return-void
.end method
