.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;
.super Ljava/lang/Object;
.source "Menu_FB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBData"
.end annotation


# instance fields
.field public height:I

.field public isFeature:Z

.field public posX:I

.field public posY:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB;

.field public width:I


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB;Ljava/lang/String;IIIIZ)V
    .registers 8
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB;
    .param p2, "text"  # Ljava/lang/String;
    .param p3, "posX"  # I
    .param p4, "posY"  # I
    .param p5, "width"  # I
    .param p6, "height"  # I
    .param p7, "isFeature"  # Z

    .line 40
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->text:Ljava/lang/String;

    .line 42
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->posX:I

    .line 43
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->posY:I

    .line 44
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->width:I

    .line 45
    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->height:I

    .line 46
    iput-boolean p7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Alliance/Menu_FB$FBData;->isFeature:Z

    .line 47
    return-void
.end method
