.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2

.field private static final tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private bottomCenter:I

.field private bottomHeight:F

.field private bottomLeft:I

.field private bottomRight:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private idx:I

.field private leftWidth:F

.field private middleCenter:I

.field private middleHeight:F

.field private middleLeft:I

.field private middleRight:I

.field private middleWidth:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private rightWidth:F

.field private texture:Lcom/badlogic/gdx/graphics/Texture;

.field private topCenter:I

.field private topHeight:F

.field private topLeft:I

.field private topRight:I

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 3
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 125
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .registers 12
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "left"  # I
    .param p3, "right"  # I
    .param p4, "top"  # I
    .param p5, "bottom"  # I

    .line 64
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 119
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .registers 3
    .param p1, "ninePatch"  # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 175
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 7
    .param p1, "ninePatch"  # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 179
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 181
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 182
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 183
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 184
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 185
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 186
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 187
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 188
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 189
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 191
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 192
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 193
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 194
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 195
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 196
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 198
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 199
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 200
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 201
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 203
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 204
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 5
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 136
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .registers 25
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "left"  # I
    .param p3, "right"  # I
    .param p4, "top"  # I
    .param p5, "bottom"  # I

    .line 73
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v1, 0xb4

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 54
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 74
    if-eqz p1, :cond_121

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    sub-int v1, v1, p2

    sub-int v7, v1, p3

    .line 76
    .local v7, "middleWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    sub-int v1, v1, p4

    sub-int v8, v1, p5

    .line 78
    .local v8, "middleHeight":I
    const/16 v1, 0x9

    new-array v9, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 79
    .local v9, "patches":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-lez p4, :cond_70

    .line 80
    if-lez p2, :cond_4b

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    const/4 v1, 0x0

    aput-object v12, v9, v1

    .line 81
    :cond_4b
    if-lez v7, :cond_5d

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v10

    .line 82
    :cond_5d
    if-lez p3, :cond_70

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v11

    .line 84
    :cond_70
    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-lez v8, :cond_ac

    .line 85
    if-lez p2, :cond_87

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p2

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v12

    .line 86
    :cond_87
    if-lez v7, :cond_99

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v13

    .line 87
    :cond_99
    if-lez p3, :cond_ac

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v14

    .line 89
    :cond_ac
    const/4 v15, 0x6

    const/16 v16, 0x7

    const/16 v17, 0x8

    if-lez p5, :cond_f0

    .line 90
    if-lez p2, :cond_c7

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v15

    .line 91
    :cond_c7
    if-lez v7, :cond_db

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v16

    .line 92
    :cond_db
    if-lez p3, :cond_f0

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v17

    .line 96
    :cond_f0
    const/4 v1, 0x0

    if-nez p2, :cond_107

    if-nez v7, :cond_107

    .line 97
    aget-object v2, v9, v11

    aput-object v2, v9, v10

    .line 98
    aget-object v2, v9, v14

    aput-object v2, v9, v13

    .line 99
    aget-object v2, v9, v17

    aput-object v2, v9, v16

    .line 100
    aput-object v1, v9, v11

    .line 101
    aput-object v1, v9, v14

    .line 102
    aput-object v1, v9, v17

    .line 105
    :cond_107
    if-nez p4, :cond_11d

    if-nez v8, :cond_11d

    .line 106
    aget-object v2, v9, v15

    aput-object v2, v9, v12

    .line 107
    aget-object v2, v9, v16

    aput-object v2, v9, v13

    .line 108
    aget-object v2, v9, v17

    aput-object v2, v9, v14

    .line 109
    aput-object v1, v9, v15

    .line 110
    aput-object v1, v9, v16

    .line 111
    aput-object v1, v9, v17

    .line 114
    :cond_11d
    invoke-direct {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 115
    return-void

    .line 74
    .end local v7  # "middleWidth":I
    .end local v8  # "middleHeight":I
    .end local v9  # "patches":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "region cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 130
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 132
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 8
    .param p1, "patches"  # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 148
    if-eqz p1, :cond_120

    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_120

    .line 150
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 152
    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_38

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5d

    :cond_38
    const/4 v1, 0x3

    aget-object v2, p1, v1

    if-eqz v2, :cond_4a

    aget-object v1, p1, v1

    .line 153
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5d

    :cond_4a
    const/4 v1, 0x6

    aget-object v2, p1, v1

    if-eqz v2, :cond_65

    aget-object v2, p1, v1

    .line 154
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5d

    goto :goto_65

    .line 155
    :cond_5d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Left side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_65
    :goto_65
    const/4 v2, 0x2

    aget-object v3, p1, v2

    if-eqz v3, :cond_77

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9d

    :cond_77
    const/4 v3, 0x5

    aget-object v4, p1, v3

    if-eqz v4, :cond_89

    aget-object v3, p1, v3

    .line 158
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9d

    :cond_89
    const/16 v3, 0x8

    aget-object v4, p1, v3

    if-eqz v4, :cond_a5

    aget-object v4, p1, v3

    .line 159
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9d

    goto :goto_a5

    .line 160
    :cond_9d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Right side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_a5
    :goto_a5
    aget-object v4, p1, v1

    if-eqz v4, :cond_b6

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_da

    :cond_b6
    const/4 v1, 0x7

    aget-object v4, p1, v1

    if-eqz v4, :cond_c8

    aget-object v1, p1, v1

    .line 163
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_da

    :cond_c8
    aget-object v1, p1, v3

    if-eqz v1, :cond_e2

    aget-object v1, p1, v3

    .line 164
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_da

    goto :goto_e2

    .line 165
    :cond_da
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Bottom side patches must have the same height"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_e2
    :goto_e2
    aget-object v1, p1, v0

    if-eqz v1, :cond_f3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_117

    :cond_f3
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_105

    aget-object v0, p1, v0

    .line 168
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_117

    :cond_105
    aget-object v0, p1, v2

    if-eqz v0, :cond_11f

    aget-object v0, p1, v2

    .line 169
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_117

    goto :goto_11f

    .line 170
    :cond_117
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Top side patches must have the same height"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_11f
    :goto_11f
    return-void

    .line 148
    :cond_120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NinePatch needs nine TextureRegions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I
    .registers 11
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "isStretchW"  # Z
    .param p3, "isStretchH"  # Z

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_b

    .line 274
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_13

    .line 275
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-ne v0, v1, :cond_75

    .line 281
    :goto_13
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .local v0, "u":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .local v1, "v":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .local v2, "u2":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 282
    .local v3, "v2":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v4, v5, :cond_2f

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v4, v5, :cond_4a

    .line 283
    :cond_2f
    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz p2, :cond_3e

    .line 284
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    .line 285
    .local v5, "halfTexelWidth":F
    add-float/2addr v0, v5

    .line 286
    sub-float/2addr v2, v5

    .line 288
    .end local v5  # "halfTexelWidth":F
    :cond_3e
    if-eqz p3, :cond_4a

    .line 289
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 290
    .local v4, "halfTexelHeight":F
    sub-float/2addr v1, v4

    .line 291
    add-float/2addr v3, v4

    .line 295
    .end local v4  # "halfTexelHeight":F
    :cond_4a
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 296
    .local v4, "vertices":[F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 297
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x3

    aput v0, v4, v6

    .line 298
    add-int/lit8 v6, v5, 0x4

    aput v1, v4, v6

    .line 300
    add-int/lit8 v6, v5, 0x8

    aput v0, v4, v6

    .line 301
    add-int/lit8 v6, v5, 0x9

    aput v3, v4, v6

    .line 303
    add-int/lit8 v6, v5, 0xd

    aput v2, v4, v6

    .line 304
    add-int/lit8 v6, v5, 0xe

    aput v3, v4, v6

    .line 306
    add-int/lit8 v6, v5, 0x12

    aput v2, v4, v6

    .line 307
    add-int/lit8 v6, v5, 0x13

    aput v1, v4, v6

    .line 308
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v6, v6, 0x14

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 309
    return v5

    .line 276
    .end local v0  # "u":F
    .end local v1  # "v":F
    .end local v2  # "u2":F
    .end local v3  # "v2":F
    .end local v4  # "vertices":[F
    .end local v5  # "i":I
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All regions must be from the same texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 12
    .param p1, "patches"  # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 210
    const/4 v0, 0x6

    aget-object v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 211
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 212
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 213
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    goto :goto_24

    .line 215
    :cond_22
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 216
    :goto_24
    const/4 v1, 0x7

    aget-object v4, p1, v1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v4, :cond_5f

    .line 217
    aget-object v4, p1, v1

    aget-object v7, p1, v0

    if-nez v7, :cond_39

    aget-object v7, p1, v5

    if-eqz v7, :cond_37

    goto :goto_39

    :cond_37
    move v7, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v7, v6

    :goto_3a
    invoke-direct {p0, v4, v7, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 218
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v7, p1, v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 219
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    aget-object v7, p1, v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    goto :goto_61

    .line 221
    :cond_5f
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 222
    :goto_61
    aget-object v4, p1, v5

    if-eqz v4, :cond_8c

    .line 223
    aget-object v4, p1, v5

    invoke-direct {p0, v4, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 224
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 225
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    goto :goto_8e

    .line 227
    :cond_8c
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 228
    :goto_8e
    const/4 v4, 0x3

    aget-object v7, p1, v4

    if-eqz v7, :cond_c6

    .line 229
    aget-object v7, p1, v4

    aget-object v8, p1, v3

    if-nez v8, :cond_a0

    aget-object v0, p1, v0

    if-eqz v0, :cond_9e

    goto :goto_a0

    :cond_9e
    move v0, v3

    goto :goto_a1

    :cond_a0
    :goto_a0
    move v0, v6

    :goto_a1
    invoke-direct {p0, v7, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    goto :goto_c8

    .line 233
    :cond_c6
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 234
    :goto_c8
    const/4 v0, 0x4

    aget-object v7, p1, v0

    const/4 v8, 0x5

    if-eqz v7, :cond_10d

    .line 235
    aget-object v7, p1, v0

    aget-object v4, p1, v4

    if-nez v4, :cond_db

    aget-object v4, p1, v8

    if-eqz v4, :cond_d9

    goto :goto_db

    :cond_d9
    move v4, v3

    goto :goto_dc

    :cond_db
    :goto_db
    move v4, v6

    :goto_dc
    aget-object v9, p1, v6

    if-nez v9, :cond_e7

    aget-object v1, p1, v1

    if-eqz v1, :cond_e5

    goto :goto_e7

    :cond_e5
    move v1, v3

    goto :goto_e8

    :cond_e7
    :goto_e7
    move v1, v6

    :goto_e8
    invoke-direct {p0, v7, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 237
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 238
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    goto :goto_10f

    .line 240
    :cond_10d
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 241
    :goto_10f
    aget-object v0, p1, v8

    const/4 v1, 0x2

    if-eqz v0, :cond_147

    .line 242
    aget-object v0, p1, v8

    aget-object v4, p1, v1

    if-nez v4, :cond_121

    aget-object v4, p1, v5

    if-eqz v4, :cond_11f

    goto :goto_121

    :cond_11f
    move v4, v3

    goto :goto_122

    :cond_121
    :goto_121
    move v4, v6

    :goto_122
    invoke-direct {p0, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    goto :goto_149

    .line 246
    :cond_147
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 247
    :goto_149
    aget-object v0, p1, v3

    if-eqz v0, :cond_174

    .line 248
    aget-object v0, p1, v3

    invoke-direct {p0, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 249
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    goto :goto_176

    .line 252
    :cond_174
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 253
    :goto_176
    aget-object v0, p1, v6

    if-eqz v0, :cond_1ad

    .line 254
    aget-object v0, p1, v6

    aget-object v4, p1, v3

    if-nez v4, :cond_187

    aget-object v4, p1, v1

    if-eqz v4, :cond_185

    goto :goto_187

    :cond_185
    move v4, v3

    goto :goto_188

    :cond_187
    :goto_187
    move v4, v6

    :goto_188
    invoke-direct {p0, v0, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 255
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    goto :goto_1af

    .line 258
    :cond_1ad
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 259
    :goto_1af
    aget-object v0, p1, v1

    if-eqz v0, :cond_1da

    .line 260
    aget-object v0, p1, v1

    invoke-direct {p0, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 262
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    goto :goto_1dc

    .line 264
    :cond_1da
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 265
    :goto_1dc
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1f0

    .line 266
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    new-array v0, v0, [F

    .line 267
    .local v0, "newVertices":[F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 270
    .end local v0  # "newVertices":[F
    :cond_1f0
    return-void
.end method

.method private prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 22
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 335
    move-object/from16 v7, p0

    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    add-float v8, p2, v0

    .line 336
    .local v8, "centerX":F
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float v9, p3, v0

    .line 337
    .local v9, "centerY":F
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    sub-float v0, p4, v0

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    sub-float v10, v0, v1

    .line 338
    .local v10, "centerWidth":F
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    sub-float v0, p5, v0

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    sub-float v11, v0, v1

    .line 339
    .local v11, "centerHeight":F
    add-float v0, p2, p4

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    sub-float v12, v0, v1

    .line 340
    .local v12, "rightX":F
    add-float v0, p3, p5

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    sub-float v13, v0, v1

    .line 341
    .local v13, "topY":F
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    .line 342
    .local v14, "c":F
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    const/4 v15, -0x1

    if-eq v0, v15, :cond_4f

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 343
    :cond_4f
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    if-eq v0, v15, :cond_61

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    move-object/from16 v0, p0

    move v2, v8

    move/from16 v3, p3

    move v4, v10

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 344
    :cond_61
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    if-eq v0, v15, :cond_74

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v3, p3

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 345
    :cond_74
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    if-eq v0, v15, :cond_86

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v9

    move v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 346
    :cond_86
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    if-eq v0, v15, :cond_96

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    move-object/from16 v0, p0

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 347
    :cond_96
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    if-eq v0, v15, :cond_a7

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    move-object/from16 v0, p0

    move v2, v12

    move v3, v9

    move v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 348
    :cond_a7
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    if-eq v0, v15, :cond_ba

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 349
    :cond_ba
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    if-eq v0, v15, :cond_cb

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    move-object/from16 v0, p0

    move v2, v8

    move v3, v13

    move v4, v10

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 350
    :cond_cb
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    if-eq v0, v15, :cond_dd

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    move-object/from16 v0, p0

    move v2, v12

    move v3, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 351
    :cond_dd
    return-void
.end method

.method private set(IFFFFF)V
    .registers 11
    .param p1, "idx"  # I
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "color"  # F

    .line 314
    add-float v0, p2, p4

    .line 315
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 316
    .local v1, "fy2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 317
    .local v2, "vertices":[F
    aput p2, v2, p1

    .line 318
    add-int/lit8 v3, p1, 0x1

    aput p3, v2, v3

    .line 319
    add-int/lit8 v3, p1, 0x2

    aput p6, v2, v3

    .line 321
    add-int/lit8 v3, p1, 0x5

    aput p2, v2, v3

    .line 322
    add-int/lit8 v3, p1, 0x6

    aput v1, v2, v3

    .line 323
    add-int/lit8 v3, p1, 0x7

    aput p6, v2, v3

    .line 325
    add-int/lit8 v3, p1, 0xa

    aput v0, v2, v3

    .line 326
    add-int/lit8 v3, p1, 0xb

    aput v1, v2, v3

    .line 327
    add-int/lit8 v3, p1, 0xc

    aput p6, v2, v3

    .line 329
    add-int/lit8 v3, p1, 0xf

    aput v0, v2, v3

    .line 330
    add-int/lit8 v3, p1, 0x10

    aput p3, v2, v3

    .line 331
    add-int/lit8 v3, p1, 0x11

    aput p6, v2, v3

    .line 332
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 10
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 354
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 356
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .registers 24
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F

    .line 360
    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->prepareVertices(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 361
    add-float v0, p2, p4

    .local v0, "worldOriginX":F
    add-float v1, p3, p5

    .line 362
    .local v1, "worldOriginY":F
    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 363
    .local v2, "n":I
    iget-object v3, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 364
    .local v3, "vertices":[F
    const/4 v4, 0x0

    cmpl-float v4, p10, v4

    if-eqz v4, :cond_47

    .line 365
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v2, :cond_46

    .line 366
    aget v5, v3, v4

    sub-float/2addr v5, v0

    mul-float v5, v5, p8

    .local v5, "vx":F
    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    sub-float/2addr v7, v1

    mul-float v7, v7, p9

    .line 367
    .local v7, "vy":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    .local v8, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    .line 368
    .local v9, "sin":F
    mul-float v10, v8, v5

    mul-float v11, v9, v7

    sub-float/2addr v10, v11

    add-float/2addr v10, v0

    aput v10, v3, v4

    .line 369
    add-int/lit8 v10, v4, 0x1

    mul-float v11, v9, v5

    mul-float v12, v8, v7

    add-float/2addr v11, v12

    add-float/2addr v11, v1

    aput v11, v3, v10

    .line 365
    .end local v5  # "vx":F
    .end local v7  # "vy":F
    .end local v8  # "cos":F
    .end local v9  # "sin":F
    add-int/lit8 v4, v4, 0x5

    goto :goto_1b

    .end local v4  # "i":I
    :cond_46
    goto :goto_6b

    .line 371
    :cond_47
    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v5, p8, v4

    if-nez v5, :cond_51

    cmpl-float v4, p9, v4

    if-eqz v4, :cond_6b

    .line 372
    :cond_51
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_52
    if-ge v4, v2, :cond_6b

    .line 373
    aget v5, v3, v4

    sub-float/2addr v5, v0

    mul-float v5, v5, p8

    add-float/2addr v5, v0

    aput v5, v3, v4

    .line 374
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    sub-float/2addr v7, v1

    mul-float v7, v7, p9

    add-float/2addr v7, v1

    aput v7, v3, v5

    .line 372
    add-int/lit8 v4, v4, 0x5

    goto :goto_52

    .line 377
    .end local v4  # "i":I
    :cond_6b
    :goto_6b
    iget-object v4, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    move-object v7, p1

    invoke-interface {p1, v4, v3, v5, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 378
    return-void
.end method

.method public getBottomHeight()F
    .registers 2

    .line 418
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLeftWidth()F
    .registers 2

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    return v0
.end method

.method public getMiddleHeight()F
    .registers 2

    .line 438
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    return v0
.end method

.method public getMiddleWidth()F
    .registers 2

    .line 427
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    return v0
.end method

.method public getPadBottom()F
    .registers 3

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    return v0

    .line 501
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .registers 3

    .line 467
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    return v0

    .line 468
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .registers 3

    .line 478
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    return v0

    .line 479
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .registers 3

    .line 489
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    return v0

    .line 490
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    return v0
.end method

.method public getRightWidth()F
    .registers 2

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getTopHeight()F
    .registers 2

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    return v0
.end method

.method public getTotalHeight()F
    .registers 3

    .line 453
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTotalWidth()F
    .registers 3

    .line 449
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public scale(FF)V
    .registers 5
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 511
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 512
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 513
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 514
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 515
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 516
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 517
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 518
    :cond_2b
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 519
    :cond_36
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 520
    :cond_41
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 521
    :cond_4c
    return-void
.end method

.method public setBottomHeight(F)V
    .registers 2
    .param p1, "bottomHeight"  # F

    .line 423
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 424
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 384
    return-void
.end method

.method public setLeftWidth(F)V
    .registers 2
    .param p1, "leftWidth"  # F

    .line 396
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 397
    return-void
.end method

.method public setMiddleHeight(F)V
    .registers 2
    .param p1, "middleHeight"  # F

    .line 445
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 446
    return-void
.end method

.method public setMiddleWidth(F)V
    .registers 2
    .param p1, "middleWidth"  # F

    .line 434
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 435
    return-void
.end method

.method public setPadBottom(F)V
    .registers 2
    .param p1, "bottom"  # F

    .line 506
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 507
    return-void
.end method

.method public setPadLeft(F)V
    .registers 2
    .param p1, "left"  # F

    .line 473
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 474
    return-void
.end method

.method public setPadRight(F)V
    .registers 2
    .param p1, "right"  # F

    .line 484
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 485
    return-void
.end method

.method public setPadTop(F)V
    .registers 2
    .param p1, "top"  # F

    .line 495
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 496
    return-void
.end method

.method public setPadding(FFFF)V
    .registers 5
    .param p1, "left"  # F
    .param p2, "right"  # F
    .param p3, "top"  # F
    .param p4, "bottom"  # F

    .line 459
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:F

    .line 460
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:F

    .line 461
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:F

    .line 462
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:F

    .line 463
    return-void
.end method

.method public setRightWidth(F)V
    .registers 2
    .param p1, "rightWidth"  # F

    .line 405
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 406
    return-void
.end method

.method public setTopHeight(F)V
    .registers 2
    .param p1, "topHeight"  # F

    .line 414
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 415
    return-void
.end method
