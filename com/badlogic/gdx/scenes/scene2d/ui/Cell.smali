.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field private static final bottomi:Ljava/lang/Integer;

.field private static final centeri:Ljava/lang/Integer;

.field private static defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private static files:Lcom/badlogic/gdx/Files;

.field private static final lefti:Ljava/lang/Integer;

.field private static final onef:Ljava/lang/Float;

.field private static final onei:Ljava/lang/Integer;

.field private static final righti:Ljava/lang/Integer;

.field private static final topi:Ljava/lang/Integer;

.field private static final zerof:Ljava/lang/Float;

.field private static final zeroi:Ljava/lang/Integer;


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field actorHeight:F

.field actorWidth:F

.field actorX:F

.field actorY:F

.field align:Ljava/lang/Integer;

.field cellAboveIndex:I

.field colspan:Ljava/lang/Integer;

.field column:I

.field computedPadBottom:F

.field computedPadLeft:F

.field computedPadRight:F

.field computedPadTop:F

.field endRow:Z

.field expandX:Ljava/lang/Integer;

.field expandY:Ljava/lang/Integer;

.field fillX:Ljava/lang/Float;

.field fillY:Ljava/lang/Float;

.field maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field row:I

.field spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field uniformX:Ljava/lang/Boolean;

.field uniformY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    .line 17
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    .line 18
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 46
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 47
    .local v0, "defaults":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 48
    :cond_f
    return-void
.end method

.method public static defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 992
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v0, v1, :cond_96

    .line 993
    :cond_a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    .line 994
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 995
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 996
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 997
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 998
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 999
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1000
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1001
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1002
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1003
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1004
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1005
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1006
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1007
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1008
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1009
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 1010
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 1011
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 1012
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 1013
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 1014
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 1015
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 1016
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 1018
    :cond_96
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "align"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 515
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 545
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_19

    .line 547
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 548
    :goto_19
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 521
    return-object p0
.end method

.method clear()V
    .registers 2

    .line 901
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 902
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 903
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 904
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 905
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 906
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 907
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 908
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 909
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 910
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 911
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 912
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 913
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 914
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 915
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 916
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 917
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 918
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 919
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 920
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 921
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 922
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 923
    return-void
.end method

.method public clearActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 67
    return-object p0
.end method

.method public colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "colspan"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 616
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 617
    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 586
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 587
    return-object p0
.end method

.method public expand(II)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "x"  # I
    .param p2, "y"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 605
    return-object p0
.end method

.method public expand(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "x"  # Z
    .param p2, "y"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 610
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_7
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 611
    if-eqz p2, :cond_e

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_10
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 612
    return-object p0
.end method

.method public expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 593
    return-object p0
.end method

.method public expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 599
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 475
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 476
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 493
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 494
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "fill"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_7
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 507
    if-eqz p1, :cond_e

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_10
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 508
    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "x"  # Z
    .param p2, "y"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_7
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 500
    if-eqz p2, :cond_e

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_10
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 501
    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 481
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 482
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 488
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getActorHeight()F
    .registers 2

    .line 683
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return v0
.end method

.method public getActorWidth()F
    .registers 2

    .line 675
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    return v0
.end method

.method public getActorX()F
    .registers 2

    .line 659
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    return v0
.end method

.method public getActorY()F
    .registers 2

    .line 667
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    return v0
.end method

.method public getAlign()I
    .registers 2

    .line 843
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColspan()I
    .registers 2

    .line 855
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColumn()I
    .registers 2

    .line 691
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    return v0
.end method

.method public getComputedPadBottom()F
    .registers 2

    .line 883
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    return v0
.end method

.method public getComputedPadLeft()F
    .registers 2

    .line 878
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    return v0
.end method

.method public getComputedPadRight()F
    .registers 2

    .line 888
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    return v0
.end method

.method public getComputedPadTop()F
    .registers 2

    .line 873
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    return v0
.end method

.method public getExpandX()I
    .registers 2

    .line 847
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpandY()I
    .registers 2

    .line 851
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillX()F
    .registers 2

    .line 835
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFillY()F
    .registers 2

    .line 839
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .registers 3

    .line 749
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 745
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .registers 3

    .line 740
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 736
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .registers 3

    .line 713
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 709
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .registers 3

    .line 704
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 700
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadBottom()F
    .registers 3

    .line 812
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 808
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .registers 3

    .line 803
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 799
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .registers 3

    .line 821
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 817
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .registers 3

    .line 794
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 790
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .registers 4

    .line 826
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .registers 4

    .line 831
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .registers 3

    .line 731
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 727
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .registers 3

    .line 722
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 718
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .line 695
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    return v0
.end method

.method public getSpaceBottom()F
    .registers 3

    .line 776
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 772
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceLeft()F
    .registers 3

    .line 767
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 763
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceRight()F
    .registers 3

    .line 785
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 781
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceTop()F
    .registers 3

    .line 758
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 754
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 896
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getUniformX()Z
    .registers 2

    .line 859
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUniformY()Z
    .registers 2

    .line 863
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 563
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 564
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 565
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 566
    return-object p0
.end method

.method public growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 572
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 573
    return-object p0
.end method

.method public growY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 579
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 580
    return-object p0
.end method

.method public hasActor()Z
    .registers 2

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 144
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_9

    .line 135
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 136
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 137
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 138
    return-object p0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEndRow()Z
    .registers 2

    .line 868
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return v0
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 536
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_19

    .line 538
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 539
    :goto_19
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "maxHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 301
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "maxHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 276
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 277
    return-object p0

    .line 275
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 283
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 289
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_7

    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 253
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 254
    return-object p0

    .line 251
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_11

    .line 260
    if-eqz p2, :cond_9

    .line 261
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 262
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 263
    return-object p0

    .line 260
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "maxWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 295
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "maxWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 269
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 270
    return-object p0

    .line 268
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .registers 3
    .param p1, "cell"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 960
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-nez p1, :cond_3

    return-void

    .line 961
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 962
    :cond_b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 963
    :cond_13
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 964
    :cond_1b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 965
    :cond_23
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 966
    :cond_2b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 967
    :cond_33
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 968
    :cond_3b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 969
    :cond_43
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 970
    :cond_4b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 971
    :cond_53
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 972
    :cond_5b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_63

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 973
    :cond_63
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_6b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 974
    :cond_6b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_73

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 975
    :cond_73
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz v0, :cond_7b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 976
    :cond_7b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    if-eqz v0, :cond_83

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 977
    :cond_83
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-eqz v0, :cond_8b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 978
    :cond_8b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 979
    :cond_93
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    if-eqz v0, :cond_9b

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 980
    :cond_9b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    if-eqz v0, :cond_a3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 981
    :cond_a3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v0, :cond_ab

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 982
    :cond_ab
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz v0, :cond_b3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 983
    :cond_b3
    return-void
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "minHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 195
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "minHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 172
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 173
    return-object p0

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 179
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 185
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_7

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 151
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 152
    return-object p0

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_11

    .line 158
    if-eqz p2, :cond_9

    .line 159
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 160
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 161
    return-object p0

    .line 158
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "minWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 190
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "minWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 166
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 167
    return-object p0

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "pad"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 444
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 9
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v2

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 449
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "pad"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_b

    .line 398
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 399
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 400
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 401
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 402
    return-object p0

    .line 397
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .param p1, "top"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_29

    .line 407
    if-eqz p2, :cond_21

    .line 408
    if-eqz p3, :cond_19

    .line 409
    if-eqz p4, :cond_11

    .line 410
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 411
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 412
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 413
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 414
    return-object p0

    .line 409
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "padBottom"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 464
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "padBottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 431
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 432
    return-object p0

    .line 430
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "padLeft"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 459
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "padLeft"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 425
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 426
    return-object p0

    .line 424
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "padRight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 469
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "padRight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 438
    return-object p0

    .line 436
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "padTop"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 454
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "padTop"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 419
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 420
    return-object p0

    .line 418
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "prefHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 246
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "prefHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 223
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 224
    return-object p0

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 236
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 230
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_7

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 202
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 203
    return-object p0

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_11

    .line 209
    if-eqz p2, :cond_9

    .line 210
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 211
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 212
    return-object p0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "prefWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 241
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "prefWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 217
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 218
    return-object p0

    .line 216
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 927
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 928
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 930
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 931
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 932
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 554
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_19

    .line 556
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 557
    :goto_19
    return-object p0
.end method

.method public row()V
    .registers 2

    .line 892
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 893
    return-void
.end method

.method set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .registers 3
    .param p1, "cell"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 935
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 936
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 937
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 938
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 939
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 940
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 941
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 942
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 943
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 944
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 945
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 946
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 947
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 948
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 949
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 950
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 951
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 952
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 953
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 954
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 955
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 956
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 957
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TA;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TA;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    .local p1, "newActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p1, :cond_20

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 58
    :cond_17
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 59
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 61
    :cond_20
    return-object p0
.end method

.method public setActorBounds(FFFF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 652
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 653
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 654
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 655
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 656
    return-void
.end method

.method public setActorHeight(F)V
    .registers 2
    .param p1, "actorHeight"  # F

    .line 687
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 688
    return-void
.end method

.method public setActorWidth(F)V
    .registers 2
    .param p1, "actorWidth"  # F

    .line 679
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 680
    return-void
.end method

.method public setActorX(F)V
    .registers 2
    .param p1, "actorX"  # F

    .line 663
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 664
    return-void
.end method

.method public setActorY(F)V
    .registers 2
    .param p1, "actorY"  # F

    .line 671
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 672
    return-void
.end method

.method public setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .registers 2
    .param p1, "table"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 51
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 52
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 108
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 114
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_f

    .line 83
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 89
    return-object p0

    .line 82
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_19

    .line 95
    if-eqz p2, :cond_11

    .line 96
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 97
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 98
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 99
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 100
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 101
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 102
    return-object p0

    .line 95
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "space"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_d

    .line 353
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 354
    return-object p0

    .line 352
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "space cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 9
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_70

    .line 360
    cmpg-float v1, p2, v0

    if-ltz v1, :cond_57

    .line 361
    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3e

    .line 362
    cmpg-float v0, p4, v0

    if-ltz v0, :cond_25

    .line 363
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v2

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 364
    return-object p0

    .line 362
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "right cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "space"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_b

    .line 307
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 308
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 309
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 310
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 311
    return-object p0

    .line 306
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "space cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .param p1, "top"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_29

    .line 316
    if-eqz p2, :cond_21

    .line 317
    if-eqz p3, :cond_19

    .line 318
    if-eqz p4, :cond_11

    .line 319
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 320
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 321
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 322
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 323
    return-object p0

    .line 318
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "spaceBottom"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 384
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 385
    return-object p0

    .line 383
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceBottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "spaceBottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 340
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 341
    return-object p0

    .line 339
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "spaceLeft"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 377
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 378
    return-object p0

    .line 376
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceLeft cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "spaceLeft"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 334
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 335
    return-object p0

    .line 333
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "spaceRight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 391
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 392
    return-object p0

    .line 390
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceRight cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "spaceRight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 346
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 347
    return-object p0

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 5
    .param p1, "spaceTop"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 370
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 371
    return-object p0

    .line 369
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceTop cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "spaceTop"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_5

    .line 328
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 329
    return-object p0

    .line 327
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spaceTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 986
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 527
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_19

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 530
    :goto_19
    return-object p0
.end method

.method public uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 623
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 624
    return-object p0
.end method

.method public uniform(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "uniform"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 641
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 642
    return-object p0
.end method

.method public uniform(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "x"  # Z
    .param p2, "y"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 647
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 648
    return-object p0
.end method

.method public uniformX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 630
    return-object p0
.end method

.method public uniformY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 636
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3
    .param p1, "width"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 129
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    if-eqz p1, :cond_9

    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 121
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 122
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 123
    return-object p0

    .line 119
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
