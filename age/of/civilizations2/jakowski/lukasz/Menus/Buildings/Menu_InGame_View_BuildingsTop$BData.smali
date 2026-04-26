.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;
.super Ljava/lang/Object;
.source "Menu_InGame_View_BuildingsTop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BData"
.end annotation


# instance fields
.field private id:I

.field private num:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;II)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;
    .param p2, "id"  # I
    .param p3, "number"  # I

    .line 44
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->id:I

    .line 46
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->num:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->num:I

    return v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->id:I

    return v0
.end method


# virtual methods
.method public getID()I
    .registers 2

    .line 50
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->id:I

    return v0
.end method

.method public getNum()I
    .registers 2

    .line 54
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->num:I

    return v0
.end method

.method public setNum(I)V
    .registers 2
    .param p1, "num"  # I

    .line 58
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Buildings/Menu_InGame_View_BuildingsTop$BData;->num:I

    .line 59
    return-void
.end method
