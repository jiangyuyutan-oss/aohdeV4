.class Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$16;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 260
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Outliner/Menu_InGame_Outliner;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOutliner;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
