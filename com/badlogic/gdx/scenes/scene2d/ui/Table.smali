.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field static final cellPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private static columnWeightedWidth:[F

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field private static rowWeightedHeight:[F


# instance fields
.field align:I

.field background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private final cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Z

.field private final columnDefaults:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columnMinWidth:[F

.field private columnPrefWidth:[F

.field private columnWidth:[F

.field private columns:I

.field debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private expandHeight:[F

.field private expandWidth:[F

.field private implicitEndRow:Z

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field round:Z

.field private rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private rowHeight:[F

.field private rowMinHeight:[F

.field private rowPrefHeight:[F

.field private rows:I

.field private sizeInvalid:Z

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private tableMinHeight:F

.field private tableMinWidth:F

.field private tablePrefHeight:F

.field private tablePrefWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    .line 1284
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1293
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1302
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1311
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 76
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 79
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 85
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 93
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 98
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 99
    return-void
.end method

.method private addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "w"  # F
    .param p4, "h"  # F
    .param p5, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 1215
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1216
    .local v0, "rect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1217
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 1218
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 1219
    return-void
.end method

.method private addDebugRects(FFFF)V
    .registers 22
    .param p1, "currentX"  # F
    .param p2, "currentY"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 1173
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 1174
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_15

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_12

    goto :goto_15

    :cond_12
    move/from16 v7, p4

    goto :goto_3a

    .line 1176
    :cond_15
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v0

    sub-float v2, v0, p2

    move/from16 v7, p4

    neg-float v4, v7

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1180
    :goto_3a
    move/from16 v8, p1

    .line 1181
    .local v8, "x":F
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v9, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v10, p1

    move/from16 v11, p2

    move v12, v0

    .end local v0  # "i":I
    .end local p1  # "currentX":F
    .end local p2  # "currentY":F
    .local v9, "n":I
    .local v10, "currentX":F
    .local v11, "currentY":F
    .local v12, "i":I
    :goto_46
    if-ge v12, v9, :cond_cd

    .line 1182
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1185
    .local v13, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_5d

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_6c

    .line 1186
    :cond_5d
    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v3, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    iget v4, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1189
    :cond_6c
    const/4 v0, 0x0

    .line 1190
    .local v0, "spannedCellWidth":F
    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v1, "column":I
    iget-object v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    .local v2, "nn":I
    :goto_76
    if-ge v1, v2, :cond_80

    .line 1191
    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    aget v3, v3, v1

    add-float/2addr v0, v3

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 1192
    .end local v1  # "column":I
    .end local v2  # "nn":I
    :cond_80
    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v1, v2

    sub-float v14, v0, v1

    .line 1193
    .end local v0  # "spannedCellWidth":F
    .local v14, "spannedCellWidth":F
    iget v0, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v10, v0

    .line 1194
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_96

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_b7

    .line 1195
    :cond_96
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v0, v1

    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v0, v1

    iget v1, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float v15, v0, v1

    .line 1196
    .local v15, "h":F
    iget v0, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v16, v11, v0

    .line 1197
    .local v16, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v0

    sub-float v2, v0, v16

    neg-float v4, v15

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move v1, v10

    move v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1200
    .end local v15  # "h":F
    .end local v16  # "y":F
    :cond_b7
    iget-boolean v0, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_c5

    .line 1201
    move v0, v8

    .line 1202
    .end local v10  # "currentX":F
    .local v0, "currentX":F
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    iget v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v1, v2

    add-float/2addr v11, v1

    move v10, v0

    goto :goto_c9

    .line 1204
    .end local v0  # "currentX":F
    .restart local v10  # "currentX":F
    :cond_c5
    iget v0, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v0, v14

    add-float/2addr v10, v0

    .line 1181
    .end local v13  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v14  # "spannedCellWidth":F
    :goto_c9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_46

    .line 1206
    .end local v9  # "n":I
    .end local v12  # "i":I
    :cond_cd
    return-void
.end method

.method private clearDebugRects()V
    .registers 3

    .line 1209
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 1210
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 1211
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 1212
    return-void
.end method

.method private computeSize()V
    .registers 39

    .line 782
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 784
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 785
    .local v1, "cells":[Ljava/lang/Object;
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 788
    .local v2, "cellCount":I
    const/4 v3, 0x1

    if-lez v2, :cond_1f

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v4, :cond_1f

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 790
    iput-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 793
    :cond_1f
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .local v4, "columns":I
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 794
    .local v5, "rows":I
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    invoke-direct {v0, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v6

    iput-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .line 795
    .local v6, "columnMinWidth":[F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    invoke-direct {v0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    .line 796
    .local v7, "rowMinHeight":[F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    invoke-direct {v0, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v8

    iput-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 797
    .local v8, "columnPrefWidth":[F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    invoke-direct {v0, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v9

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 798
    .local v9, "rowPrefHeight":[F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    invoke-direct {v0, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v10

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .line 799
    .local v10, "columnWidth":[F
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 800
    .local v11, "rowHeight":[F
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    invoke-direct {v0, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .line 801
    .local v12, "expandWidth":[F
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    invoke-direct {v0, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v13

    iput-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 803
    .local v13, "expandHeight":[F
    const/4 v14, 0x0

    .line 804
    .local v14, "spaceRightLast":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_65
    if-ge v15, v2, :cond_1f2

    .line 805
    aget-object v16, v1, v15

    move-object/from16 v3, v16

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 806
    .local v3, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    move-object/from16 v16, v10

    .end local v10  # "columnWidth":[F
    .local v16, "columnWidth":[F
    iget v10, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move-object/from16 v18, v11

    .end local v11  # "rowHeight":[F
    .local v10, "column":I
    .local v18, "rowHeight":[F
    iget v11, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v19, v2

    .end local v2  # "cellCount":I
    .local v11, "row":I
    .local v19, "cellCount":I
    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 807
    .local v2, "colspan":I
    move/from16 v20, v15

    .end local v15  # "i":I
    .local v20, "i":I
    iget-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 810
    .local v15, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v21, v7

    .end local v7  # "rowMinHeight":[F
    .local v21, "rowMinHeight":[F
    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_9c

    aget v7, v13, v11

    const/16 v17, 0x0

    cmpl-float v7, v7, v17

    if-nez v7, :cond_9c

    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v13, v11

    .line 811
    :cond_9c
    const/4 v7, 0x1

    if-ne v2, v7, :cond_b8

    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_b8

    aget v7, v12, v10

    const/16 v17, 0x0

    cmpl-float v7, v7, v17

    if-nez v7, :cond_b8

    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v12, v10

    .line 815
    :cond_b8
    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    move-object/from16 v22, v13

    if-nez v10, :cond_c6

    move/from16 v23, v14

    const/4 v13, 0x0

    goto :goto_d4

    .end local v13  # "expandHeight":[F
    .local v22, "expandHeight":[F
    :cond_c6
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    sub-float/2addr v13, v14

    move/from16 v23, v14

    const/4 v14, 0x0

    .end local v14  # "spaceRightLast":F
    .local v23, "spaceRightLast":F
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :goto_d4
    add-float/2addr v7, v13

    iput v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    .line 816
    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 817
    iget v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    const/4 v13, -0x1

    if-eq v7, v13, :cond_104

    .line 818
    iget v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    aget-object v7, v1, v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 819
    .local v7, "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    move-object/from16 v24, v12

    .end local v12  # "expandWidth":[F
    .local v24, "expandWidth":[F
    iget-object v12, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v14, v12

    const/4 v12, 0x0

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    goto :goto_106

    .line 817
    .end local v7  # "above":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v24  # "expandWidth":[F
    .restart local v12  # "expandWidth":[F
    :cond_104
    move-object/from16 v24, v12

    .line 821
    .end local v12  # "expandWidth":[F
    .restart local v24  # "expandWidth":[F
    :goto_106
    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .line 822
    .local v7, "spaceRight":F
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    add-int v13, v10, v2

    if-ne v13, v4, :cond_118

    const/4 v13, 0x0

    goto :goto_119

    :cond_118
    move v13, v7

    :goto_119
    add-float/2addr v12, v13

    iput v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    .line 823
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    add-int/lit8 v13, v5, -0x1

    if-ne v11, v13, :cond_128

    const/4 v13, 0x0

    goto :goto_12e

    :cond_128
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    :goto_12e
    add-float/2addr v12, v13

    iput v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    .line 824
    move v14, v7

    .line 827
    .end local v23  # "spaceRightLast":F
    .restart local v14  # "spaceRightLast":F
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .local v12, "prefWidth":F
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    .line 828
    .local v13, "prefHeight":F
    move/from16 v25, v7

    .end local v7  # "spaceRight":F
    .local v25, "spaceRight":F
    iget-object v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    move/from16 v23, v14

    .end local v14  # "spaceRightLast":F
    .local v7, "minWidth":F
    .restart local v23  # "spaceRightLast":F
    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    .line 829
    .local v14, "minHeight":F
    move/from16 v26, v5

    .end local v5  # "rows":I
    .local v26, "rows":I
    iget-object v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    move/from16 v27, v4

    .end local v4  # "columns":I
    .local v5, "maxWidth":F
    .local v27, "columns":I
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    .line 830
    .local v4, "maxHeight":F
    cmpg-float v28, v12, v7

    if-gez v28, :cond_163

    move v12, v7

    .line 831
    :cond_163
    cmpg-float v28, v13, v14

    if-gez v28, :cond_168

    move v13, v14

    .line 832
    :cond_168
    const/16 v17, 0x0

    cmpl-float v28, v5, v17

    if-lez v28, :cond_173

    cmpl-float v28, v12, v5

    if-lez v28, :cond_173

    move v12, v5

    .line 833
    :cond_173
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_17e

    cmpl-float v17, v13, v4

    if-lez v17, :cond_17e

    move v13, v4

    .line 834
    :cond_17e
    move/from16 v17, v4

    .end local v4  # "maxHeight":F
    .local v17, "maxHeight":F
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v4, :cond_19f

    .line 835
    move/from16 v28, v5

    .end local v5  # "maxWidth":F
    .local v28, "maxWidth":F
    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v7, v4

    .line 836
    float-to-double v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v14, v4

    .line 837
    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v12, v4

    .line 838
    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v13, v4

    goto :goto_1a1

    .line 834
    .end local v28  # "maxWidth":F
    .restart local v5  # "maxWidth":F
    :cond_19f
    move/from16 v28, v5

    .line 841
    .end local v5  # "maxWidth":F
    .restart local v28  # "maxWidth":F
    :goto_1a1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c0

    .line 842
    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v4, v5

    .line 843
    .local v4, "hpadding":F
    aget v5, v8, v10

    move/from16 v29, v2

    .end local v2  # "colspan":I
    .local v29, "colspan":I
    add-float v2, v12, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v8, v10

    .line 844
    aget v2, v6, v10

    add-float v5, v7, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v6, v10

    goto :goto_1c2

    .line 841
    .end local v4  # "hpadding":F
    .end local v29  # "colspan":I
    .restart local v2  # "colspan":I
    :cond_1c0
    move/from16 v29, v2

    .line 846
    .end local v2  # "colspan":I
    .restart local v29  # "colspan":I
    :goto_1c2
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v2, v4

    .line 847
    .local v2, "vpadding":F
    aget v4, v9, v11

    add-float v5, v13, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v9, v11

    .line 848
    aget v4, v21, v11

    add-float v5, v14, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v21, v11

    .line 804
    .end local v2  # "vpadding":F
    .end local v3  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v7  # "minWidth":F
    .end local v10  # "column":I
    .end local v11  # "row":I
    .end local v12  # "prefWidth":F
    .end local v13  # "prefHeight":F
    .end local v14  # "minHeight":F
    .end local v15  # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v17  # "maxHeight":F
    .end local v25  # "spaceRight":F
    .end local v28  # "maxWidth":F
    .end local v29  # "colspan":I
    add-int/lit8 v15, v20, 0x1

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move/from16 v2, v19

    move-object/from16 v7, v21

    move-object/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v12, v24

    move/from16 v5, v26

    move/from16 v4, v27

    const/4 v3, 0x1

    .end local v20  # "i":I
    .local v15, "i":I
    goto/16 :goto_65

    .end local v16  # "columnWidth":[F
    .end local v18  # "rowHeight":[F
    .end local v19  # "cellCount":I
    .end local v21  # "rowMinHeight":[F
    .end local v22  # "expandHeight":[F
    .end local v23  # "spaceRightLast":F
    .end local v24  # "expandWidth":[F
    .end local v26  # "rows":I
    .end local v27  # "columns":I
    .local v2, "cellCount":I
    .local v4, "columns":I
    .local v5, "rows":I
    .local v7, "rowMinHeight":[F
    .local v10, "columnWidth":[F
    .local v11, "rowHeight":[F
    .local v12, "expandWidth":[F
    .local v13, "expandHeight":[F
    .local v14, "spaceRightLast":F
    :cond_1f2
    move/from16 v19, v2

    move/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v21, v7

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object/from16 v24, v12

    move-object/from16 v22, v13

    move/from16 v23, v14

    move/from16 v20, v15

    .line 851
    .end local v2  # "cellCount":I
    .end local v4  # "columns":I
    .end local v5  # "rows":I
    .end local v7  # "rowMinHeight":[F
    .end local v10  # "columnWidth":[F
    .end local v11  # "rowHeight":[F
    .end local v12  # "expandWidth":[F
    .end local v13  # "expandHeight":[F
    .end local v14  # "spaceRightLast":F
    .end local v15  # "i":I
    .restart local v16  # "columnWidth":[F
    .restart local v18  # "rowHeight":[F
    .restart local v19  # "cellCount":I
    .restart local v21  # "rowMinHeight":[F
    .restart local v22  # "expandHeight":[F
    .restart local v23  # "spaceRightLast":F
    .restart local v24  # "expandWidth":[F
    .restart local v26  # "rows":I
    .restart local v27  # "columns":I
    const/4 v2, 0x0

    .local v2, "uniformMinWidth":F
    const/4 v3, 0x0

    .line 852
    .local v3, "uniformMinHeight":F
    const/4 v4, 0x0

    .local v4, "uniformPrefWidth":F
    const/4 v5, 0x0

    .line 853
    .local v5, "uniformPrefHeight":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_20b
    move/from16 v10, v19

    .end local v19  # "cellCount":I
    .local v10, "cellCount":I
    if-ge v7, v10, :cond_286

    .line 854
    aget-object v11, v1, v7

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 855
    .local v11, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 858
    .local v12, "column":I
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 860
    .local v13, "expandX":I
    if-eqz v13, :cond_242

    .line 861
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    .line 862
    .local v14, "nn":I
    move v15, v12

    .local v15, "ii":I
    :goto_225
    if-ge v15, v14, :cond_233

    .line 863
    aget v19, v24, v15

    const/16 v17, 0x0

    cmpl-float v19, v19, v17

    if-eqz v19, :cond_230

    goto :goto_242

    .line 862
    :cond_230
    add-int/lit8 v15, v15, 0x1

    goto :goto_225

    .line 864
    .end local v15  # "ii":I
    :cond_233
    move v15, v12

    .restart local v15  # "ii":I
    :goto_234
    if-ge v15, v14, :cond_240

    .line 865
    move/from16 v19, v14

    .end local v14  # "nn":I
    .local v19, "nn":I
    int-to-float v14, v13

    aput v14, v24, v15

    .line 864
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    goto :goto_234

    .end local v19  # "nn":I
    .restart local v14  # "nn":I
    :cond_240
    move/from16 v19, v14

    .line 869
    .end local v14  # "nn":I
    .end local v15  # "ii":I
    :cond_242
    :goto_242
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_264

    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_264

    .line 870
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v14, v15

    .line 871
    .local v14, "hpadding":F
    aget v15, v6, v12

    sub-float/2addr v15, v14

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 872
    aget v15, v8, v12

    sub-float/2addr v15, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 874
    .end local v14  # "hpadding":F
    :cond_264
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_281

    .line 875
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v14, v15

    .line 876
    .local v14, "vpadding":F
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v15, v21, v15

    sub-float/2addr v15, v14

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 877
    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v15, v9, v15

    sub-float/2addr v15, v14

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 853
    .end local v11  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12  # "column":I
    .end local v13  # "expandX":I
    .end local v14  # "vpadding":F
    :cond_281
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v10

    goto :goto_20b

    .line 882
    .end local v7  # "i":I
    :cond_286
    const/4 v7, 0x0

    cmpl-float v11, v4, v7

    if-gtz v11, :cond_28f

    cmpl-float v11, v5, v7

    if-lez v11, :cond_2da

    .line 883
    :cond_28f
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_290
    if-ge v7, v10, :cond_2da

    .line 884
    aget-object v11, v1, v7

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 885
    .restart local v11  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/4 v12, 0x0

    cmpl-float v13, v4, v12

    if-lez v13, :cond_2bb

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_2bb

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2bb

    .line 886
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v12, v13

    .line 887
    .local v12, "hpadding":F
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v2, v12

    aput v14, v6, v13

    .line 888
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v4, v12

    aput v14, v8, v13

    .line 890
    .end local v12  # "hpadding":F
    :cond_2bb
    const/4 v12, 0x0

    cmpl-float v13, v5, v12

    if-lez v13, :cond_2d7

    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_2d7

    .line 891
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v12, v13

    .line 892
    .local v12, "vpadding":F
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v3, v12

    aput v14, v21, v13

    .line 893
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v5, v12

    aput v14, v9, v13

    .line 883
    .end local v11  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12  # "vpadding":F
    :cond_2d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_290

    .line 899
    .end local v7  # "i":I
    :cond_2da
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_2db
    if-ge v7, v10, :cond_3b5

    .line 900
    aget-object v11, v1, v7

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 901
    .restart local v11  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 902
    .local v12, "colspan":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_2f8

    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v28, v3

    move/from16 v30, v4

    move/from16 v17, v5

    const/16 v32, 0x0

    goto/16 :goto_3a7

    .line 903
    :cond_2f8
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 905
    .local v14, "column":I
    iget-object v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 906
    .local v15, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    move-object/from16 v19, v1

    .end local v1  # "cells":[Ljava/lang/Object;
    .local v13, "minWidth":F
    .local v19, "cells":[Ljava/lang/Object;
    iget-object v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    move/from16 v20, v2

    .end local v2  # "uniformMinWidth":F
    .local v1, "prefWidth":F
    .local v20, "uniformMinWidth":F
    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 907
    .local v2, "maxWidth":F
    cmpg-float v25, v1, v13

    if-gez v25, :cond_317

    move v1, v13

    .line 908
    :cond_317
    const/16 v17, 0x0

    cmpl-float v25, v2, v17

    if-lez v25, :cond_322

    cmpl-float v25, v1, v2

    if-lez v25, :cond_322

    move v1, v2

    .line 909
    :cond_322
    move/from16 v25, v2

    .end local v2  # "maxWidth":F
    .local v25, "maxWidth":F
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v2, :cond_337

    .line 910
    move/from16 v28, v3

    .end local v3  # "uniformMinHeight":F
    .local v28, "uniformMinHeight":F
    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 911
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    goto :goto_339

    .line 909
    .end local v28  # "uniformMinHeight":F
    .restart local v3  # "uniformMinHeight":F
    :cond_337
    move/from16 v28, v3

    .line 914
    .end local v3  # "uniformMinHeight":F
    .restart local v28  # "uniformMinHeight":F
    :goto_339
    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v3, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v3

    neg-float v2, v2

    .local v2, "spannedMinWidth":F
    move v3, v2

    .line 915
    .local v3, "spannedPrefWidth":F
    const/16 v29, 0x0

    .line 916
    .local v29, "totalExpandWidth":F
    move/from16 v30, v14

    move/from16 v31, v2

    .end local v2  # "spannedMinWidth":F
    .local v30, "ii":I
    .local v31, "spannedMinWidth":F
    add-int v2, v30, v12

    move/from16 v37, v30

    move/from16 v30, v4

    move/from16 v4, v37

    .local v2, "nn":I
    .local v4, "ii":I
    .local v30, "uniformPrefWidth":F
    :goto_34e
    if-ge v4, v2, :cond_35f

    .line 917
    aget v32, v6, v4

    add-float v31, v31, v32

    .line 918
    aget v32, v8, v4

    add-float v3, v3, v32

    .line 919
    aget v32, v24, v4

    add-float v29, v29, v32

    .line 916
    add-int/lit8 v4, v4, 0x1

    goto :goto_34e

    .line 922
    .end local v2  # "nn":I
    .end local v4  # "ii":I
    :cond_35f
    sub-float v2, v13, v31

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 923
    .local v2, "extraMinWidth":F
    move/from16 v17, v5

    .end local v5  # "uniformPrefHeight":F
    .local v17, "uniformPrefHeight":F
    sub-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 924
    .local v5, "extraPrefWidth":F
    move/from16 v32, v14

    .local v32, "ii":I
    add-int v4, v32, v12

    move/from16 v34, v1

    move/from16 v1, v32

    .end local v32  # "ii":I
    .local v1, "ii":I
    .local v4, "nn":I
    .local v34, "prefWidth":F
    :goto_376
    if-ge v1, v4, :cond_3a3

    .line 925
    const/16 v32, 0x0

    cmpl-float v33, v29, v32

    if-nez v33, :cond_386

    const/high16 v33, 0x3f800000  # 1.0f

    move/from16 v35, v3

    .end local v3  # "spannedPrefWidth":F
    .local v35, "spannedPrefWidth":F
    int-to-float v3, v12

    div-float v33, v33, v3

    goto :goto_38c

    .end local v35  # "spannedPrefWidth":F
    .restart local v3  # "spannedPrefWidth":F
    :cond_386
    move/from16 v35, v3

    .end local v3  # "spannedPrefWidth":F
    .restart local v35  # "spannedPrefWidth":F
    aget v3, v24, v1

    div-float v33, v3, v29

    :goto_38c
    move/from16 v3, v33

    .line 926
    .local v3, "ratio":F
    aget v33, v6, v1

    mul-float v36, v2, v3

    add-float v33, v33, v36

    aput v33, v6, v1

    .line 927
    aget v33, v8, v1

    mul-float v36, v5, v3

    add-float v33, v33, v36

    aput v33, v8, v1

    .line 924
    .end local v3  # "ratio":F
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v35

    goto :goto_376

    .end local v35  # "spannedPrefWidth":F
    .local v3, "spannedPrefWidth":F
    :cond_3a3
    move/from16 v35, v3

    const/16 v32, 0x0

    .line 899
    .end local v1  # "ii":I
    .end local v2  # "extraMinWidth":F
    .end local v3  # "spannedPrefWidth":F
    .end local v4  # "nn":I
    .end local v5  # "extraPrefWidth":F
    .end local v11  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v12  # "colspan":I
    .end local v13  # "minWidth":F
    .end local v14  # "column":I
    .end local v15  # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v25  # "maxWidth":F
    .end local v29  # "totalExpandWidth":F
    .end local v31  # "spannedMinWidth":F
    .end local v34  # "prefWidth":F
    :goto_3a7
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v28

    move/from16 v4, v30

    goto/16 :goto_2db

    .end local v17  # "uniformPrefHeight":F
    .end local v19  # "cells":[Ljava/lang/Object;
    .end local v20  # "uniformMinWidth":F
    .end local v28  # "uniformMinHeight":F
    .end local v30  # "uniformPrefWidth":F
    .local v1, "cells":[Ljava/lang/Object;
    .local v2, "uniformMinWidth":F
    .local v3, "uniformMinHeight":F
    .local v4, "uniformPrefWidth":F
    .local v5, "uniformPrefHeight":F
    :cond_3b5
    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v28, v3

    move/from16 v30, v4

    move/from16 v17, v5

    .line 932
    .end local v1  # "cells":[Ljava/lang/Object;
    .end local v2  # "uniformMinWidth":F
    .end local v3  # "uniformMinHeight":F
    .end local v4  # "uniformPrefWidth":F
    .end local v5  # "uniformPrefHeight":F
    .end local v7  # "i":I
    .restart local v17  # "uniformPrefHeight":F
    .restart local v19  # "cells":[Ljava/lang/Object;
    .restart local v20  # "uniformMinWidth":F
    .restart local v28  # "uniformMinHeight":F
    .restart local v30  # "uniformPrefWidth":F
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    .line 933
    .local v1, "hpadding":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    .line 934
    .local v2, "vpadding":F
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 935
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 936
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3de
    move/from16 v4, v27

    .end local v27  # "columns":I
    .local v4, "columns":I
    if-ge v3, v4, :cond_3f5

    .line 937
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    aget v7, v6, v3

    add-float/2addr v5, v7

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 938
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    aget v7, v8, v3

    add-float/2addr v5, v7

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 936
    add-int/lit8 v3, v3, 0x1

    move/from16 v27, v4

    goto :goto_3de

    .line 940
    .end local v3  # "i":I
    :cond_3f5
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 941
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 942
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_3fa
    move/from16 v5, v26

    .end local v26  # "rows":I
    .local v5, "rows":I
    if-ge v3, v5, :cond_417

    .line 943
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    aget v11, v21, v3

    add-float/2addr v7, v11

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 944
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    aget v11, v21, v3

    aget v12, v9, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v7, v11

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 942
    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v5

    goto :goto_3fa

    .line 946
    .end local v3  # "i":I
    :cond_417
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 947
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 948
    return-void
.end method

.method private drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 11
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1251
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getDebug()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 1252
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1253
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1254
    :cond_21
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v1, 0x0

    .line 1255
    .local v1, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1256
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    .line 1257
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    .line 1259
    :cond_31
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_36
    if-ge v2, v3, :cond_55

    .line 1260
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1261
    .local v4, "debugRect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1262
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->x:F

    add-float/2addr v5, v0

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->y:F

    add-float/2addr v6, v1

    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->width:F

    iget v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->height:F

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 1259
    .end local v4  # "debugRect":Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1264
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_55
    return-void

    .line 1251
    .end local v0  # "x":F
    .end local v1  # "y":F
    :cond_56
    :goto_56
    return-void
.end method

.method private endRow()V
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 387
    .local v0, "cells":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 388
    .local v1, "rowColumns":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_20

    .line 389
    aget-object v4, v0, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 390
    .local v4, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v5, :cond_16

    goto :goto_20

    .line 391
    :cond_16
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    .line 388
    .end local v4  # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 393
    .end local v2  # "i":I
    :cond_20
    :goto_20
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 394
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 395
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 396
    return-void
.end method

.method private ensureSize([FI)[F
    .registers 5
    .param p1, "array"  # [F
    .param p2, "size"  # I

    .line 776
    if-eqz p1, :cond_c

    array-length v0, p1

    if-ge v0, p2, :cond_6

    goto :goto_c

    .line 777
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 778
    return-object p1

    .line 776
    :cond_c
    :goto_c
    new-array v0, p2, [F

    return-object v0
.end method

.method private obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 102
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 103
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3

    .line 299
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 214
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<TT;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 217
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 218
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 219
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 220
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 223
    :cond_1d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 224
    .local v1, "cellCount":I
    if-lez v1, :cond_70

    .line 226
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 227
    .local v3, "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v4, :cond_3f

    .line 228
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 229
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_47

    .line 231
    :cond_3f
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 232
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 235
    :goto_47
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    if-lez v2, :cond_6f

    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 238
    .local v2, "cells":[Ljava/lang/Object;
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_51
    if-ltz v4, :cond_6f

    .line 239
    aget-object v5, v2, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 240
    .local v5, "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v6, "column":I
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    .local v7, "nn":I
    :goto_60
    if-ge v6, v7, :cond_6c

    .line 241
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    if-ne v6, v8, :cond_69

    .line 242
    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 243
    goto :goto_6f

    .line 240
    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 238
    .end local v5  # "other":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v6  # "column":I
    .end local v7  # "nn":I
    :cond_6c
    add-int/lit8 v4, v4, -0x1

    goto :goto_51

    .line 248
    .end local v2  # "cells":[Ljava/lang/Object;
    .end local v3  # "lastCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v4  # "i":I
    :cond_6f
    :goto_6f
    goto :goto_74

    .line 249
    :cond_70
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 250
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 252
    :goto_74
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 255
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_93

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 256
    :cond_93
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 258
    if-eqz p1, :cond_9d

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 260
    :cond_9d
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .param p1, "text"  # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_10

    .line 273
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 272
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6
    .param p1, "text"  # Ljava/lang/CharSequence;
    .param p2, "labelStyleName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_18

    .line 280
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 279
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .param p1, "text"  # Ljava/lang/CharSequence;
    .param p2, "fontName"  # Ljava/lang/String;
    .param p3, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_19

    .line 287
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 286
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 8
    .param p1, "text"  # Ljava/lang/CharSequence;
    .param p2, "fontName"  # Ljava/lang/String;
    .param p3, "colorName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_1f

    .line 294
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 5
    .param p1, "actors"  # [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 265
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 266
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_c
    return-object p0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2
    .param p1, "align"  # I

    .line 562
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 563
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2
    .param p1, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 161
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 162
    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2
    .param p1, "drawableName"  # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    .line 168
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 588
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 589
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 590
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 568
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 569
    return-object p0
.end method

.method public clearChildren(Z)V
    .registers 6
    .param p1, "unfocus"  # Z

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 334
    .local v0, "cells":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 335
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 336
    .local v2, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 337
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 334
    .end local v2  # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v3  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 339
    .end local v1  # "i":I
    :cond_1a
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 340
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 341
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 342
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_36

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 344
    :cond_36
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 345
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 347
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren(Z)V

    .line 348
    return-void
.end method

.method public clip()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    .line 186
    return-object p0
.end method

.method public clip(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2
    .param p1, "enabled"  # Z

    .line 190
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    .line 191
    return-object p0
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6
    .param p1, "column"  # I

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 402
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :goto_11
    if-nez v0, :cond_39

    .line 403
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 405
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_34

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "i":I
    :goto_24
    if-ge v2, p1, :cond_2e

    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 408
    .end local v2  # "i":I
    :cond_2e
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_39

    .line 410
    :cond_34
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 412
    :cond_39
    :goto_39
    return-object v0
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 1

    .line 605
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 606
    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "debug"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 646
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, p1, :cond_1b

    .line 648
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 649
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_18

    .line 650
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    goto :goto_1b

    .line 652
    :cond_18
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 654
    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    .line 636
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 638
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 639
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 641
    :cond_11
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 1

    .line 610
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 611
    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    .line 626
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 628
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 631
    :cond_11
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    .line 616
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 618
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 619
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 621
    :cond_11
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 8
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_4f

    .line 113
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 115
    .local v1, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 115
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 118
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 121
    .end local v0  # "padLeft":F
    .end local v1  # "padBottom":F
    :cond_4e
    goto :goto_52

    .line 122
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 123
    :goto_52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_64

    .line 125
    :cond_56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 128
    :goto_64
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .registers 16
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 135
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 136
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v10

    move-object v6, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 137
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 7
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1222
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1223
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1225
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_4e

    .line 1226
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1227
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v1, 0x0

    .local v1, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    .local v2, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    .line 1228
    .local v3, "height":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_41

    .line 1229
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 1230
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 1231
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    .line 1232
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 1234
    :cond_41
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1235
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1236
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    .line 1238
    .end local v0  # "x":F
    .end local v1  # "y":F
    .end local v2  # "width":F
    .end local v3  # "height":F
    :cond_4d
    goto :goto_51

    .line 1239
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1240
    :goto_51
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_5b

    .line 1242
    :cond_55
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1243
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1245
    :goto_5b
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 2
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 1248
    return-void
.end method

.method public getAlign()I
    .registers 2

    .line 704
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 417
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    if-eqz p1, :cond_1b

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 419
    .local v0, "cells":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_b
    if-ge v1, v2, :cond_19

    .line 420
    aget-object v3, v0, v1

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 421
    .local v3, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_16

    return-object v3

    .line 419
    .end local v3  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 423
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 417
    .end local v0  # "cells":[Ljava/lang/Object;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    return v0
.end method

.method public getColumnMinWidth(I)F
    .registers 3
    .param p1, "columnIndex"  # I

    .line 765
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 766
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColumnPrefWidth(I)F
    .registers 3
    .param p1, "columnIndex"  # I

    .line 771
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 772
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColumnWidth(I)F
    .registers 3
    .param p1, "columnIndex"  # I

    .line 759
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 760
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColumns()I
    .registers 2

    .line 736
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 452
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 446
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 447
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .registers 3

    .line 439
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 440
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 441
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 442
    :cond_18
    return v0
.end method

.method public getPrefWidth()F
    .registers 3

    .line 432
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 433
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 434
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 435
    :cond_18
    return v0
.end method

.method public getRow(F)I
    .registers 10
    .param p1, "y"  # F

    .line 710
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 711
    .local v0, "n":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 712
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v2

    add-float/2addr p1, v2

    .line 713
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 714
    .local v2, "cells":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_13
    if-ge v3, v0, :cond_2d

    .line 715
    add-int/lit8 v5, v3, 0x1

    .end local v3  # "i":I
    .local v5, "i":I
    aget-object v3, v2, v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 716
    .local v3, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_25

    return v4

    .line 717
    :cond_25
    iget-boolean v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v6, :cond_2b

    add-int/lit8 v4, v4, 0x1

    .line 718
    .end local v3  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_2b
    move v3, v5

    goto :goto_13

    .line 719
    .end local v4  # "row":I
    .end local v5  # "i":I
    :cond_2d
    return v1
.end method

.method public getRowHeight(I)F
    .registers 3
    .param p1, "rowIndex"  # I

    .line 741
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRowMinHeight(I)F
    .registers 3
    .param p1, "rowIndex"  # I

    .line 747
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 748
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRowPrefHeight(I)F
    .registers 3
    .param p1, "rowIndex"  # I

    .line 753
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRows()I
    .registers 2

    .line 732
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    return v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .registers 2

    .line 1268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "touchable"  # Z

    .line 176
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_2a

    .line 177
    const/4 v0, 0x0

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_10

    return-object v0

    .line 178
    :cond_10
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_29

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_29

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_29

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2a

    :cond_29
    return-object v0

    .line 180
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 208
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 209
    return-void
.end method

.method public layout()V
    .registers 40

    .line 953
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 955
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    .local v1, "layoutWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v2

    .line 956
    .local v2, "layoutHeight":F
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .local v3, "columns":I
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 957
    .local v4, "rows":I
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .local v5, "columnWidth":[F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 958
    .local v6, "rowHeight":[F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .local v7, "padLeft":F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-float/2addr v8, v7

    .line 959
    .local v8, "hpadding":F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .local v9, "padTop":F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    add-float/2addr v10, v9

    .line 963
    .local v10, "vpadding":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float/2addr v11, v12

    .line 964
    .local v11, "totalGrowWidth":F
    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-nez v13, :cond_42

    .line 965
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move/from16 v18, v9

    .local v13, "columnWeightedWidth":[F
    goto :goto_76

    .line 967
    .end local v13  # "columnWeightedWidth":[F
    :cond_42
    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float v13, v1, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 968
    .local v13, "extraWidth":F
    sget-object v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    invoke-direct {v0, v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v14

    sput-object v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    .line 969
    .local v14, "columnWeightedWidth":[F
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .local v15, "columnMinWidth":[F
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 970
    .local v12, "columnPrefWidth":[F
    const/16 v17, 0x0

    move/from16 v18, v9

    move/from16 v9, v17

    .local v9, "i":I
    .local v18, "padTop":F
    :goto_60
    if-ge v9, v3, :cond_75

    .line 971
    aget v17, v12, v9

    aget v19, v15, v9

    sub-float v17, v17, v19

    .line 972
    .local v17, "growWidth":F
    div-float v19, v17, v11

    .line 973
    .local v19, "growRatio":F
    aget v20, v15, v9

    mul-float v21, v13, v19

    add-float v20, v20, v21

    aput v20, v14, v9

    .line 970
    .end local v17  # "growWidth":F
    .end local v19  # "growRatio":F
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    :cond_75
    move-object v13, v14

    .line 978
    .end local v9  # "i":I
    .end local v12  # "columnPrefWidth":[F
    .end local v14  # "columnWeightedWidth":[F
    .end local v15  # "columnMinWidth":[F
    .local v13, "columnWeightedWidth":[F
    :goto_76
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float/2addr v9, v12

    .line 979
    .local v9, "totalGrowHeight":F
    const/4 v12, 0x0

    cmpl-float v14, v9, v12

    if-nez v14, :cond_87

    .line 980
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move/from16 v20, v7

    move/from16 v17, v11

    .local v12, "rowWeightedHeight":[F
    goto :goto_bd

    .line 982
    .end local v12  # "rowWeightedHeight":[F
    :cond_87
    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    invoke-direct {v0, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    sput-object v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    .line 983
    .restart local v12  # "rowWeightedHeight":[F
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v14, v2, v14

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 984
    .local v14, "extraHeight":F
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move/from16 v17, v11

    .end local v11  # "totalGrowWidth":F
    .local v15, "rowMinHeight":[F
    .local v17, "totalGrowWidth":F
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 985
    .local v11, "rowPrefHeight":[F
    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v7, v19

    .local v7, "i":I
    .local v20, "padLeft":F
    :goto_a8
    if-ge v7, v4, :cond_bd

    .line 986
    aget v19, v11, v7

    aget v21, v15, v7

    sub-float v19, v19, v21

    .line 987
    .local v19, "growHeight":F
    div-float v21, v19, v9

    .line 988
    .local v21, "growRatio":F
    aget v22, v15, v7

    mul-float v23, v14, v21

    add-float v22, v22, v23

    aput v22, v12, v7

    .line 985
    .end local v19  # "growHeight":F
    .end local v21  # "growRatio":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 993
    .end local v7  # "i":I
    .end local v11  # "rowPrefHeight":[F
    .end local v14  # "extraHeight":F
    .end local v15  # "rowMinHeight":[F
    :cond_bd
    :goto_bd
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 994
    .local v7, "cells":[Ljava/lang/Object;
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 995
    .local v11, "cellCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_c6
    if-ge v14, v11, :cond_196

    .line 996
    aget-object v19, v7, v14

    move-object/from16 v15, v19

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 997
    .local v15, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    move/from16 v19, v9

    .end local v9  # "totalGrowHeight":F
    .local v19, "totalGrowHeight":F
    iget v9, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move-object/from16 v22, v7

    .end local v7  # "cells":[Ljava/lang/Object;
    .local v9, "column":I
    .local v22, "cells":[Ljava/lang/Object;
    iget v7, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 998
    .local v7, "row":I
    move/from16 v23, v11

    .end local v11  # "cellCount":I
    .local v23, "cellCount":I
    iget-object v11, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 1000
    .local v11, "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v24, 0x0

    .line 1001
    .local v24, "spannedWeightedWidth":F
    move/from16 v25, v2

    .end local v2  # "layoutHeight":F
    .local v25, "layoutHeight":F
    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1002
    .local v2, "colspan":I
    move/from16 v26, v9

    move/from16 v27, v10

    .end local v10  # "vpadding":F
    .local v26, "ii":I
    .local v27, "vpadding":F
    add-int v10, v26, v2

    move/from16 v28, v4

    move/from16 v4, v24

    move/from16 v24, v1

    move/from16 v1, v26

    .end local v26  # "ii":I
    .local v1, "ii":I
    .local v4, "spannedWeightedWidth":F
    .local v10, "nn":I
    .local v24, "layoutWidth":F
    .local v28, "rows":I
    :goto_f2
    if-ge v1, v10, :cond_fb

    .line 1003
    aget v26, v13, v1

    add-float v4, v4, v26

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    .line 1004
    .end local v1  # "ii":I
    .end local v10  # "nn":I
    :cond_fb
    aget v1, v12, v7

    .line 1006
    .local v1, "weightedHeight":F
    iget-object v10, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    move-object/from16 v26, v12

    .end local v12  # "rowWeightedHeight":[F
    .local v10, "prefWidth":F
    .local v26, "rowWeightedHeight":[F
    iget-object v12, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 1007
    .local v12, "prefHeight":F
    move-object/from16 v29, v13

    .end local v13  # "columnWeightedWidth":[F
    .local v29, "columnWeightedWidth":[F
    iget-object v13, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    move/from16 v30, v8

    .end local v8  # "hpadding":F
    .local v13, "minWidth":F
    .local v30, "hpadding":F
    iget-object v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    .line 1008
    .local v8, "minHeight":F
    move/from16 v31, v3

    .end local v3  # "columns":I
    .local v31, "columns":I
    iget-object v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    .local v3, "maxWidth":F
    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 1009
    .local v0, "maxHeight":F
    cmpg-float v32, v10, v13

    if-gez v32, :cond_12e

    move v10, v13

    .line 1010
    :cond_12e
    cmpg-float v32, v12, v8

    if-gez v32, :cond_133

    move v12, v8

    .line 1011
    :cond_133
    const/16 v16, 0x0

    cmpl-float v32, v3, v16

    if-lez v32, :cond_13e

    cmpl-float v32, v10, v3

    if-lez v32, :cond_13e

    move v10, v3

    .line 1012
    :cond_13e
    const/16 v16, 0x0

    cmpl-float v32, v0, v16

    if-lez v32, :cond_149

    cmpl-float v32, v12, v0

    if-lez v32, :cond_149

    move v12, v0

    .line 1014
    :cond_149
    move/from16 v32, v0

    .end local v0  # "maxHeight":F
    .local v32, "maxHeight":F
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    sub-float v0, v4, v0

    move/from16 v33, v3

    .end local v3  # "maxWidth":F
    .local v33, "maxWidth":F
    iget v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    sub-float/2addr v0, v3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1015
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float v0, v1, v0

    iget v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v0, v3

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1017
    const/4 v0, 0x1

    if-ne v2, v0, :cond_172

    aget v0, v5, v9

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v5, v9

    .line 1018
    :cond_172
    aget v0, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v7

    .line 995
    .end local v1  # "weightedHeight":F
    .end local v2  # "colspan":I
    .end local v4  # "spannedWeightedWidth":F
    .end local v7  # "row":I
    .end local v8  # "minHeight":F
    .end local v9  # "column":I
    .end local v10  # "prefWidth":F
    .end local v11  # "a":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v12  # "prefHeight":F
    .end local v13  # "minWidth":F
    .end local v15  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v32  # "maxHeight":F
    .end local v33  # "maxWidth":F
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v19

    move-object/from16 v7, v22

    move/from16 v11, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v12, v26

    move/from16 v10, v27

    move/from16 v4, v28

    move-object/from16 v13, v29

    move/from16 v8, v30

    move/from16 v3, v31

    goto/16 :goto_c6

    .end local v19  # "totalGrowHeight":F
    .end local v22  # "cells":[Ljava/lang/Object;
    .end local v23  # "cellCount":I
    .end local v24  # "layoutWidth":F
    .end local v25  # "layoutHeight":F
    .end local v26  # "rowWeightedHeight":[F
    .end local v27  # "vpadding":F
    .end local v28  # "rows":I
    .end local v29  # "columnWeightedWidth":[F
    .end local v30  # "hpadding":F
    .end local v31  # "columns":I
    .local v1, "layoutWidth":F
    .local v2, "layoutHeight":F
    .local v3, "columns":I
    .local v4, "rows":I
    .local v7, "cells":[Ljava/lang/Object;
    .local v8, "hpadding":F
    .local v9, "totalGrowHeight":F
    .local v10, "vpadding":F
    .local v11, "cellCount":I
    .local v12, "rowWeightedHeight":[F
    .local v13, "columnWeightedWidth":[F
    :cond_196
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v31, v3

    move/from16 v28, v4

    move-object/from16 v22, v7

    move/from16 v30, v8

    move/from16 v19, v9

    move/from16 v27, v10

    move/from16 v23, v11

    move-object/from16 v26, v12

    move-object/from16 v29, v13

    .line 1022
    .end local v1  # "layoutWidth":F
    .end local v2  # "layoutHeight":F
    .end local v3  # "columns":I
    .end local v4  # "rows":I
    .end local v7  # "cells":[Ljava/lang/Object;
    .end local v8  # "hpadding":F
    .end local v9  # "totalGrowHeight":F
    .end local v10  # "vpadding":F
    .end local v11  # "cellCount":I
    .end local v12  # "rowWeightedHeight":[F
    .end local v13  # "columnWeightedWidth":[F
    .end local v14  # "i":I
    .restart local v19  # "totalGrowHeight":F
    .restart local v22  # "cells":[Ljava/lang/Object;
    .restart local v23  # "cellCount":I
    .restart local v24  # "layoutWidth":F
    .restart local v25  # "layoutHeight":F
    .restart local v26  # "rowWeightedHeight":[F
    .restart local v27  # "vpadding":F
    .restart local v28  # "rows":I
    .restart local v29  # "columnWeightedWidth":[F
    .restart local v30  # "hpadding":F
    .restart local v31  # "columns":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .local v1, "expandWidth":[F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 1023
    .local v2, "expandHeight":[F
    const/4 v3, 0x0

    .line 1024
    .local v3, "totalExpand":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b4
    move/from16 v7, v31

    .end local v31  # "columns":I
    .local v7, "columns":I
    if-ge v4, v7, :cond_1c0

    .line 1025
    aget v8, v1, v4

    add-float/2addr v3, v8

    .line 1024
    add-int/lit8 v4, v4, 0x1

    move/from16 v31, v7

    goto :goto_1b4

    .line 1026
    .end local v4  # "i":I
    :cond_1c0
    const/4 v4, 0x0

    cmpl-float v8, v3, v4

    if-lez v8, :cond_1f7

    .line 1027
    sub-float v4, v24, v30

    .line 1028
    .local v4, "extra":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1c8
    if-ge v8, v7, :cond_1d0

    .line 1029
    aget v9, v5, v8

    sub-float/2addr v4, v9

    .line 1028
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c8

    .line 1030
    .end local v8  # "i":I
    :cond_1d0
    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-lez v9, :cond_1f7

    .line 1031
    const/4 v8, 0x0

    .line 1032
    .local v8, "used":F
    const/4 v9, 0x0

    .line 1033
    .local v9, "lastIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1d8
    if-ge v10, v7, :cond_1f0

    .line 1034
    aget v11, v1, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1e2

    goto :goto_1ed

    .line 1035
    :cond_1e2
    aget v11, v1, v10

    mul-float/2addr v11, v4

    div-float/2addr v11, v3

    .line 1036
    .local v11, "amount":F
    aget v12, v5, v10

    add-float/2addr v12, v11

    aput v12, v5, v10

    .line 1037
    add-float/2addr v8, v11

    .line 1038
    move v9, v10

    .line 1033
    .end local v11  # "amount":F
    :goto_1ed
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d8

    .line 1040
    .end local v10  # "i":I
    :cond_1f0
    aget v10, v5, v9

    sub-float v11, v4, v8

    add-float/2addr v10, v11

    aput v10, v5, v9

    .line 1044
    .end local v4  # "extra":F
    .end local v8  # "used":F
    .end local v9  # "lastIndex":I
    :cond_1f7
    const/4 v3, 0x0

    .line 1045
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f9
    move/from16 v8, v28

    .end local v28  # "rows":I
    .local v8, "rows":I
    if-ge v4, v8, :cond_205

    .line 1046
    aget v9, v2, v4

    add-float/2addr v3, v9

    .line 1045
    add-int/lit8 v4, v4, 0x1

    move/from16 v28, v8

    goto :goto_1f9

    .line 1047
    .end local v4  # "i":I
    :cond_205
    const/4 v4, 0x0

    cmpl-float v9, v3, v4

    if-lez v9, :cond_23c

    .line 1048
    sub-float v4, v25, v27

    .line 1049
    .local v4, "extra":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_20d
    if-ge v9, v8, :cond_215

    .line 1050
    aget v10, v6, v9

    sub-float/2addr v4, v10

    .line 1049
    add-int/lit8 v9, v9, 0x1

    goto :goto_20d

    .line 1051
    .end local v9  # "i":I
    :cond_215
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    if-lez v10, :cond_23c

    .line 1052
    const/4 v9, 0x0

    .line 1053
    .local v9, "used":F
    const/4 v10, 0x0

    .line 1054
    .local v10, "lastIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_21d
    if-ge v11, v8, :cond_235

    .line 1055
    aget v12, v2, v11

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_227

    goto :goto_232

    .line 1056
    :cond_227
    aget v12, v2, v11

    mul-float/2addr v12, v4

    div-float/2addr v12, v3

    .line 1057
    .local v12, "amount":F
    aget v13, v6, v11

    add-float/2addr v13, v12

    aput v13, v6, v11

    .line 1058
    add-float/2addr v9, v12

    .line 1059
    move v10, v11

    .line 1054
    .end local v12  # "amount":F
    :goto_232
    add-int/lit8 v11, v11, 0x1

    goto :goto_21d

    .line 1061
    .end local v11  # "i":I
    :cond_235
    aget v11, v6, v10

    sub-float v12, v4, v9

    add-float/2addr v11, v12

    aput v11, v6, v10

    .line 1066
    .end local v4  # "extra":F
    .end local v9  # "used":F
    .end local v10  # "lastIndex":I
    :cond_23c
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23d
    move/from16 v9, v23

    .end local v23  # "cellCount":I
    .local v9, "cellCount":I
    if-ge v4, v9, :cond_286

    .line 1067
    aget-object v10, v22, v4

    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1068
    .local v10, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    iget-object v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1069
    .local v11, "colspan":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_24f

    goto :goto_281

    .line 1071
    :cond_24f
    const/4 v13, 0x0

    .line 1072
    .local v13, "extraWidth":F
    iget v14, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .local v14, "column":I
    add-int v15, v14, v11

    .local v15, "nn":I
    :goto_254
    if-ge v14, v15, :cond_261

    .line 1073
    aget v21, v29, v14

    aget v23, v5, v14

    sub-float v21, v21, v23

    add-float v13, v13, v21

    .line 1072
    add-int/lit8 v14, v14, 0x1

    goto :goto_254

    .line 1074
    .end local v14  # "column":I
    .end local v15  # "nn":I
    :cond_261
    iget v14, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v15, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    sub-float/2addr v13, v14

    .line 1076
    int-to-float v14, v11

    div-float/2addr v13, v14

    .line 1077
    cmpl-float v14, v13, v15

    if-lez v14, :cond_281

    .line 1078
    iget v14, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .restart local v14  # "column":I
    add-int v15, v14, v11

    .restart local v15  # "nn":I
    :goto_276
    if-ge v14, v15, :cond_281

    .line 1079
    aget v21, v5, v14

    add-float v21, v21, v13

    aput v21, v5, v14

    .line 1078
    add-int/lit8 v14, v14, 0x1

    goto :goto_276

    .line 1066
    .end local v10  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v11  # "colspan":I
    .end local v13  # "extraWidth":F
    .end local v14  # "column":I
    .end local v15  # "nn":I
    :cond_281
    :goto_281
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v9

    goto :goto_23d

    .line 1084
    .end local v4  # "i":I
    :cond_286
    move/from16 v4, v30

    .local v4, "tableWidth":F
    move/from16 v10, v27

    .line 1085
    .local v10, "tableHeight":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_28b
    if-ge v11, v7, :cond_293

    .line 1086
    aget v12, v5, v11

    add-float/2addr v4, v12

    .line 1085
    add-int/lit8 v11, v11, 0x1

    goto :goto_28b

    .line 1087
    .end local v11  # "i":I
    :cond_293
    const/4 v11, 0x0

    .restart local v11  # "i":I
    :goto_294
    if-ge v11, v8, :cond_29c

    .line 1088
    aget v12, v6, v11

    add-float/2addr v10, v12

    .line 1087
    add-int/lit8 v11, v11, 0x1

    goto :goto_294

    .line 1091
    .end local v11  # "i":I
    :cond_29c
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 1092
    .local v11, "align":I
    move/from16 v12, v20

    .line 1093
    .local v12, "x":F
    and-int/lit8 v13, v11, 0x10

    const/high16 v14, 0x40000000  # 2.0f

    if-eqz v13, :cond_2aa

    .line 1094
    sub-float v13, v24, v4

    add-float/2addr v12, v13

    goto :goto_2b2

    .line 1095
    :cond_2aa
    and-int/lit8 v13, v11, 0x8

    if-nez v13, :cond_2b2

    .line 1096
    sub-float v13, v24, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 1098
    :cond_2b2
    :goto_2b2
    move/from16 v13, v18

    .line 1099
    .local v13, "y":F
    and-int/lit8 v15, v11, 0x4

    if-eqz v15, :cond_2bc

    .line 1100
    sub-float v15, v25, v10

    add-float/2addr v13, v15

    goto :goto_2c4

    .line 1101
    :cond_2bc
    and-int/lit8 v15, v11, 0x2

    if-nez v15, :cond_2c4

    .line 1102
    sub-float v15, v25, v10

    div-float/2addr v15, v14

    add-float/2addr v13, v15

    .line 1105
    :cond_2c4
    :goto_2c4
    move v15, v12

    .local v15, "currentX":F
    move/from16 v21, v13

    .line 1106
    .local v21, "currentY":F
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "i":I
    :goto_2cb
    if-ge v14, v9, :cond_438

    .line 1107
    aget-object v28, v22, v14

    move-object/from16 v31, v1

    .end local v1  # "expandWidth":[F
    .local v31, "expandWidth":[F
    move-object/from16 v1, v28

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1109
    .local v1, "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    const/16 v28, 0x0

    .line 1110
    .local v28, "spannedCellWidth":F
    move-object/from16 v32, v2

    .end local v2  # "expandHeight":[F
    .local v32, "expandHeight":[F
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move/from16 v33, v3

    .end local v3  # "totalExpand":F
    .local v2, "column":I
    .local v33, "totalExpand":F
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    .local v3, "nn":I
    :goto_2e4
    if-ge v2, v3, :cond_2ed

    .line 1111
    aget v34, v5, v2

    add-float v28, v28, v34

    .line 1110
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e4

    .line 1112
    .end local v2  # "column":I
    .end local v3  # "nn":I
    :cond_2ed
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v2, v3

    sub-float v28, v28, v2

    .line 1114
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v15, v2

    .line 1116
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .local v2, "fillX":F
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1117
    .local v3, "fillY":F
    const/16 v16, 0x0

    cmpl-float v34, v2, v16

    if-lez v34, :cond_335

    .line 1118
    move-object/from16 v34, v5

    .end local v5  # "columnWidth":[F
    .local v34, "columnWidth":[F
    mul-float v5, v28, v2

    move/from16 v35, v2

    .end local v2  # "fillX":F
    .local v35, "fillX":F
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move/from16 v36, v7

    .end local v7  # "columns":I
    .local v36, "columns":I
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1119
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 1120
    .local v2, "maxWidth":F
    const/4 v5, 0x0

    cmpl-float v7, v2, v5

    if-lez v7, :cond_33b

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    goto :goto_33b

    .line 1117
    .end local v34  # "columnWidth":[F
    .end local v35  # "fillX":F
    .end local v36  # "columns":I
    .local v2, "fillX":F
    .restart local v5  # "columnWidth":[F
    .restart local v7  # "columns":I
    :cond_335
    move/from16 v35, v2

    move-object/from16 v34, v5

    move/from16 v36, v7

    .line 1122
    .end local v2  # "fillX":F
    .end local v5  # "columnWidth":[F
    .end local v7  # "columns":I
    .restart local v34  # "columnWidth":[F
    .restart local v35  # "fillX":F
    .restart local v36  # "columns":I
    :cond_33b
    :goto_33b
    const/4 v2, 0x0

    cmpl-float v5, v3, v2

    if-lez v5, :cond_36f

    .line 1123
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v6, v2

    mul-float/2addr v2, v3

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v2, v5

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v5

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1124
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 1125
    .local v2, "maxHeight":F
    const/4 v5, 0x0

    cmpl-float v7, v2, v5

    if-lez v7, :cond_370

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    goto :goto_370

    .line 1122
    .end local v2  # "maxHeight":F
    :cond_36f
    const/4 v5, 0x0

    .line 1128
    :cond_370
    :goto_370
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1129
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_37d

    .line 1130
    iput v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_393

    .line 1131
    :cond_37d
    and-int/lit8 v2, v11, 0x10

    if-eqz v2, :cond_389

    .line 1132
    add-float v2, v15, v28

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float/2addr v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_393

    .line 1134
    :cond_389
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float v2, v28, v2

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v15

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 1136
    :goto_393
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_39e

    .line 1137
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    const/high16 v7, 0x40000000  # 2.0f

    goto :goto_3c3

    .line 1138
    :cond_39e
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_3b1

    .line 1139
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v6, v2

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v2, v7

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    const/high16 v7, 0x40000000  # 2.0f

    goto :goto_3c3

    .line 1141
    :cond_3b1
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v2, v6, v2

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v2, v7

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v2, v7

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v7

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1142
    :goto_3c3
    sub-float v2, v25, v21

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    sub-float/2addr v2, v5

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v2, v5

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1144
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v2, :cond_3fb

    .line 1145
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    move v5, v8

    .end local v8  # "rows":I
    .local v5, "rows":I
    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1146
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1147
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 1148
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v2, v7

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    goto :goto_3fc

    .line 1144
    .end local v5  # "rows":I
    .restart local v8  # "rows":I
    :cond_3fb
    move v5, v8

    .line 1151
    .end local v8  # "rows":I
    .restart local v5  # "rows":I
    :goto_3fc
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_412

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    move/from16 v37, v3

    .end local v3  # "fillY":F
    .local v37, "fillY":F
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    move/from16 v38, v5

    .end local v5  # "rows":I
    .local v38, "rows":I
    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-virtual {v2, v7, v8, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_416

    .end local v37  # "fillY":F
    .end local v38  # "rows":I
    .restart local v3  # "fillY":F
    .restart local v5  # "rows":I
    :cond_412
    move/from16 v37, v3

    move/from16 v38, v5

    .line 1153
    .end local v3  # "fillY":F
    .end local v5  # "rows":I
    .restart local v37  # "fillY":F
    .restart local v38  # "rows":I
    :goto_416
    iget-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v2, :cond_423

    .line 1154
    move v2, v12

    .line 1155
    .end local v15  # "currentX":F
    .local v2, "currentX":F
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v3, v6, v3

    add-float v21, v21, v3

    move v15, v2

    goto :goto_428

    .line 1157
    .end local v2  # "currentX":F
    .restart local v15  # "currentX":F
    :cond_423
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float v2, v28, v2

    add-float/2addr v15, v2

    .line 1106
    .end local v1  # "c":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v28  # "spannedCellWidth":F
    .end local v35  # "fillX":F
    .end local v37  # "fillY":F
    :goto_428
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v5, v34

    move/from16 v7, v36

    move/from16 v8, v38

    goto/16 :goto_2cb

    .end local v31  # "expandWidth":[F
    .end local v32  # "expandHeight":[F
    .end local v33  # "totalExpand":F
    .end local v34  # "columnWidth":[F
    .end local v36  # "columns":I
    .end local v38  # "rows":I
    .local v1, "expandWidth":[F
    .local v2, "expandHeight":[F
    .local v3, "totalExpand":F
    .local v5, "columnWidth":[F
    .restart local v7  # "columns":I
    .restart local v8  # "rows":I
    :cond_438
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move/from16 v33, v3

    move-object/from16 v34, v5

    move/from16 v36, v7

    move/from16 v38, v8

    .line 1161
    .end local v1  # "expandWidth":[F
    .end local v2  # "expandHeight":[F
    .end local v3  # "totalExpand":F
    .end local v5  # "columnWidth":[F
    .end local v7  # "columns":I
    .end local v8  # "rows":I
    .end local v14  # "i":I
    .restart local v31  # "expandWidth":[F
    .restart local v32  # "expandHeight":[F
    .restart local v33  # "totalExpand":F
    .restart local v34  # "columnWidth":[F
    .restart local v36  # "columns":I
    .restart local v38  # "rows":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 1162
    .local v1, "childrenArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 1163
    .local v2, "children":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_44f
    if-ge v3, v5, :cond_460

    .line 1164
    aget-object v7, v2, v3

    .line 1165
    .local v7, "child":Ljava/lang/Object;
    instance-of v8, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v8, :cond_45d

    move-object v8, v7

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 1163
    .end local v7  # "child":Ljava/lang/Object;
    :cond_45d
    add-int/lit8 v3, v3, 0x1

    goto :goto_44f

    .line 1169
    .end local v3  # "i":I
    .end local v5  # "n":I
    :cond_460
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v3, v5, :cond_46d

    sub-float v3, v4, v30

    sub-float v5, v10, v27

    invoke-direct {v0, v12, v13, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRects(FFFF)V

    .line 1170
    :cond_46d
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 582
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 583
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "pad"  # F

    .line 518
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 519
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 6
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F

    .line 523
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 524
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 525
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 526
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 528
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 4
    .param p1, "pad"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 462
    if-eqz p1, :cond_e

    .line 463
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 464
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 465
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 466
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 468
    return-object p0

    .line 462
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 7
    .param p1, "top"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 472
    if-eqz p1, :cond_2c

    .line 473
    if-eqz p2, :cond_24

    .line 474
    if-eqz p3, :cond_1c

    .line 475
    if-eqz p4, :cond_14

    .line 476
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 477
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 478
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 479
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 481
    return-object p0

    .line 475
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "padBottom"  # F

    .line 547
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 549
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 4
    .param p1, "padBottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 502
    if-eqz p1, :cond_8

    .line 503
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 505
    return-object p0

    .line 502
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "padLeft"  # F

    .line 540
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 542
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 4
    .param p1, "padLeft"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 494
    if-eqz p1, :cond_8

    .line 495
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 497
    return-object p0

    .line 494
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "padRight"  # F

    .line 554
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 556
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 4
    .param p1, "padRight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 510
    if-eqz p1, :cond_8

    .line 511
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 513
    return-object p0

    .line 510
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3
    .param p1, "padTop"  # F

    .line 533
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 535
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 4
    .param p1, "padTop"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 486
    if-eqz p1, :cond_8

    .line 487
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 489
    return-object p0

    .line 486
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 3
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .registers 5
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"  # Z

    .line 318
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 319
    :cond_8
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 320
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v0, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 321
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 6
    .param p1, "index"  # I
    .param p2, "unfocus"  # Z

    .line 325
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 326
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    .line 327
    .local v1, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v1, :cond_d

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 328
    :cond_d
    return-object v0
.end method

.method public reset()V
    .registers 5

    .line 353
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearChildren()V

    .line 354
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 355
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 356
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 357
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 358
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 359
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_25
    if-ge v0, v1, :cond_39

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 363
    .local v2, "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    if-eqz v2, :cond_36

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 361
    .end local v2  # "columnCell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 365
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 366
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 595
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 596
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 597
    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1f

    .line 372
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    if-nez v0, :cond_1c

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0

    .line 374
    :cond_19
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 376
    :cond_1c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 378
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 380
    :cond_2d
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 12
    .param p1, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v0

    .local v0, "padTopOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v1

    .local v1, "padLeftOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v2

    .local v2, "padBottomOld":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v3

    .line 151
    .local v3, "padRightOld":F
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v4

    .local v4, "padTopNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v5

    .local v5, "padLeftNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v6

    .local v6, "padBottomNew":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v7

    .line 153
    .local v7, "padRightNew":F
    add-float v8, v0, v2

    add-float v9, v4, v6

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4c

    add-float v8, v1, v3

    add-float v9, v5, v7

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_38

    goto :goto_4c

    .line 155
    :cond_38
    cmpl-float v8, v0, v4

    if-nez v8, :cond_48

    cmpl-float v8, v1, v5

    if-nez v8, :cond_48

    cmpl-float v8, v2, v6

    if-nez v8, :cond_48

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_4f

    .line 156
    :cond_48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_4f

    .line 154
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    .line 157
    :cond_4f
    :goto_4f
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .registers 4
    .param p1, "drawableName"  # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 145
    return-void

    .line 143
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClip(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 197
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 198
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 200
    return-void
.end method

.method public setDebug(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 601
    if-eqz p1, :cond_5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 602
    return-void
.end method

.method public setRound(Z)V
    .registers 2
    .param p1, "round"  # Z

    .line 728
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 729
    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 2
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 723
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 724
    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6
    .param p1, "actors"  # [Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 306
    .local v0, "stack":Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    if-eqz p1, :cond_13

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_13

    .line 308
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 310
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_13
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    return-object v1
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 574
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 575
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 576
    return-object p0
.end method
