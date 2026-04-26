.class public Lcom/badlogic/gdx/utils/QuadTreeFloat;
.super Ljava/lang/Object;
.source "QuadTreeFloat.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# static fields
.field public static final DISTSQR:I = 0x3

.field public static final VALUE:I = 0x0

.field public static final X:I = 0x1

.field public static final Y:I = 0x2

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/QuadTreeFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public depth:I

.field public height:F

.field public final maxDepth:I

.field public final maxValues:I

.field public ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public values:[F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/QuadTreeFloat$1;

    const/16 v1, 0x80

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/QuadTreeFloat$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/QuadTreeFloat;-><init>(II)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "maxValues"  # I
    .param p2, "maxDepth"  # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    mul-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    .line 56
    iput p2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxDepth:I

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 58
    return-void
.end method

.method private addToChild(FFF)V
    .registers 12
    .param p1, "value"  # F
    .param p2, "valueX"  # F
    .param p3, "valueY"  # F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .local v0, "halfWidth":F
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    div-float v1, v2, v1

    .line 98
    .local v1, "halfHeight":F
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float/2addr v2, v0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4b

    .line 99
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float/2addr v2, v1

    cmpg-float v2, p3, v2

    if-gez v2, :cond_30

    .line 100
    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_2f

    :cond_1e
    iget v3, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    iget v4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .local v2, "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :goto_2f
    goto :goto_89

    .line 102
    .end local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :cond_30
    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_4a

    :cond_37
    iget v3, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v4, v2, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .restart local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :goto_4a
    goto :goto_89

    .line 104
    .end local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :cond_4b
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float/2addr v2, v1

    cmpg-float v2, p3, v2

    if-gez v2, :cond_6d

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_6c

    :cond_59
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float v3, v2, v0

    iget v4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .restart local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :goto_6c
    goto :goto_89

    .line 107
    .end local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :cond_6d
    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_89

    :cond_74
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float v3, v2, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v4, v2, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 109
    .restart local v2  # "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    :goto_89
    invoke-virtual {v2, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->add(FFF)V

    .line 110
    return-void
.end method

.method private findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V
    .registers 24
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "result"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_97

    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    iget v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_97

    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_97

    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    iget v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_28

    goto/16 :goto_97

    .line 202
    :cond_28
    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 203
    .local v4, "count":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_72

    .line 204
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v5

    .local v5, "nearValue":F
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    .local v7, "nearX":F
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    .local v9, "nearY":F
    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    .line 205
    .local v11, "nearDist":F
    iget-object v12, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 206
    .local v12, "values":[F
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_43
    if-ge v13, v4, :cond_64

    .line 207
    aget v14, v12, v13

    .local v14, "px":F
    add-int/lit8 v15, v13, 0x1

    aget v15, v12, v15

    .line 208
    .local v15, "py":F
    sub-float v16, v14, v1

    .local v16, "dx":F
    sub-float v17, v15, v2

    .line 209
    .local v17, "dy":F
    mul-float v18, v16, v16

    mul-float v19, v17, v17

    add-float v18, v18, v19

    .line 210
    .local v18, "dist":F
    cmpg-float v19, v18, v11

    if-gez v19, :cond_61

    .line 211
    move/from16 v11, v18

    .line 212
    add-int/lit8 v19, v13, -0x1

    aget v5, v12, v19

    .line 213
    move v7, v14

    .line 214
    move v9, v15

    .line 206
    .end local v14  # "px":F
    .end local v15  # "py":F
    .end local v16  # "dx":F
    .end local v17  # "dy":F
    .end local v18  # "dist":F
    :cond_61
    add-int/lit8 v13, v13, 0x3

    goto :goto_43

    .line 217
    .end local v13  # "i":I
    :cond_64
    const/4 v13, 0x0

    invoke-virtual {v3, v13, v5}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 218
    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 219
    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 220
    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 221
    .end local v5  # "nearValue":F
    .end local v7  # "nearX":F
    .end local v9  # "nearY":F
    .end local v11  # "nearDist":F
    .end local v12  # "values":[F
    goto :goto_96

    .line 222
    :cond_72
    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v5, :cond_7b

    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 223
    :cond_7b
    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v5, :cond_84

    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 224
    :cond_84
    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v5, :cond_8d

    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 225
    :cond_8d
    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v5, :cond_96

    iget-object v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 227
    :cond_96
    :goto_96
    return-void

    .line 200
    .end local v4  # "count":I
    :cond_97
    :goto_97
    return-void
.end method

.method private obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F
    .param p5, "depth"  # I

    .line 113
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 114
    .local v0, "child":Lcom/badlogic/gdx/utils/QuadTreeFloat;
    iput p1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    .line 115
    iput p2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    .line 116
    iput p3, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    .line 117
    iput p4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    .line 118
    iput p5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    .line 119
    return-object v0
.end method

.method private query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V
    .registers 19
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "radiusSqr"  # F
    .param p4, "rectX"  # F
    .param p5, "rectY"  # F
    .param p6, "rectSize"  # F
    .param p7, "results"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 136
    move-object v0, p0

    move-object/from16 v9, p7

    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float v2, p4, p6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a5

    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    iget v2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p4

    if-lez v1, :cond_a5

    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v2, p5, p6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a5

    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    iget v2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p5

    if-gtz v1, :cond_27

    goto/16 :goto_a5

    .line 137
    :cond_27
    iget v10, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 138
    .local v10, "count":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_58

    .line 139
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 140
    .local v1, "values":[F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2f
    if-ge v2, v10, :cond_57

    .line 141
    aget v3, v1, v2

    .local v3, "px":F
    add-int/lit8 v4, v2, 0x1

    aget v4, v1, v4

    .line 142
    .local v4, "py":F
    sub-float v5, v3, p1

    .local v5, "dx":F
    sub-float v6, v4, p2

    .line 143
    .local v6, "dy":F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    .line 144
    .local v7, "d":F
    cmpg-float v8, v7, p3

    if-gtz v8, :cond_54

    .line 145
    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 146
    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 147
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 148
    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 140
    .end local v3  # "px":F
    .end local v4  # "py":F
    .end local v5  # "dx":F
    .end local v6  # "dy":F
    .end local v7  # "d":F
    :cond_54
    add-int/lit8 v2, v2, 0x3

    goto :goto_2f

    .line 151
    .end local v1  # "values":[F
    .end local v2  # "i":I
    :cond_57
    goto :goto_a4

    .line 152
    :cond_58
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_6b

    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 153
    :cond_6b
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_7e

    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 154
    :cond_7e
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_91

    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 155
    :cond_91
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 157
    :cond_a4
    :goto_a4
    return-void

    .line 136
    .end local v10  # "count":I
    :cond_a5
    :goto_a5
    return-void
.end method

.method private split(FFF)V
    .registers 9
    .param p1, "value"  # F
    .param p2, "valueX"  # F
    .param p3, "valueY"  # F

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 88
    .local v0, "values":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-ge v1, v2, :cond_17

    .line 89
    aget v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    .line 88
    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 91
    .end local v1  # "i":I
    :cond_17
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    .line 93
    return-void
.end method


# virtual methods
.method public add(FFF)V
    .registers 7
    .param p1, "value"  # F
    .param p2, "valueX"  # F
    .param p3, "valueY"  # F

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 69
    .local v0, "count":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    .line 71
    return-void

    .line 73
    :cond_9
    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxDepth:I

    if-ge v1, v2, :cond_17

    .line 74
    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-ne v0, v1, :cond_28

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->split(FFF)V

    .line 76
    return-void

    .line 78
    :cond_17
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    array-length v1, v1

    if-ne v0, v1, :cond_28

    .line 79
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->growValues()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 80
    :cond_28
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    aput p1, v1, v0

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    add-int/lit8 v2, v0, 0x2

    aput p3, v1, v2

    .line 83
    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 84
    return-void
.end method

.method protected growValues()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public nearest(FFLcom/badlogic/gdx/utils/FloatArray;)Z
    .registers 15
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "result"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 165
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 167
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 168
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 169
    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 171
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v1

    .local v1, "nearValue":F
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    .local v3, "nearX":F
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    .local v4, "nearY":F
    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    .line 172
    .local v5, "nearDist":F
    cmpl-float v0, v5, v0

    const/4 v6, 0x0

    if-eqz v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v6

    .line 173
    .local v0, "found":Z
    :goto_30
    if-nez v0, :cond_3b

    .line 174
    iget v7, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    iget v8, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 175
    mul-float/2addr v5, v5

    .line 179
    :cond_3b
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 180
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {p0, p1, p2, v7, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 181
    const/4 v7, 0x3

    .local v7, "i":I
    iget v8, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .local v8, "n":I
    :goto_4a
    if-ge v7, v8, :cond_6a

    .line 182
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    .line 183
    .local v9, "dist":F
    cmpg-float v10, v9, v5

    if-gez v10, :cond_67

    .line 184
    move v5, v9

    .line 185
    add-int/lit8 v10, v7, -0x3

    invoke-virtual {p3, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    .line 186
    add-int/lit8 v10, v7, -0x2

    invoke-virtual {p3, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    .line 187
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p3, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    .line 181
    .end local v9  # "dist":F
    :cond_67
    add-int/lit8 v7, v7, 0x4

    goto :goto_4a

    .line 190
    .end local v7  # "i":I
    .end local v8  # "n":I
    :cond_6a
    if-nez v0, :cond_73

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_73

    return v6

    .line 191
    :cond_73
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 192
    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 193
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 194
    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 195
    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 196
    return v2
.end method

.method public query(FFFLcom/badlogic/gdx/utils/FloatArray;)V
    .registers 13
    .param p1, "centerX"  # F
    .param p2, "centerY"  # F
    .param p3, "radius"  # F
    .param p4, "results"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 131
    mul-float v3, p3, p3

    sub-float v4, p1, p3

    sub-float v5, p2, p3

    const/high16 v0, 0x40000000  # 2.0f

    mul-float v6, p3, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 132
    return-void
.end method

.method public reset()V
    .registers 4

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 232
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 233
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 235
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_20

    .line 236
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 237
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 239
    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_2d

    .line 240
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 241
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 243
    :cond_2d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_3a

    .line 244
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 245
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 248
    :cond_3a
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-le v0, v1, :cond_4a

    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 250
    :cond_4a
    return-void
.end method

.method public setBounds(FFFF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    .line 62
    iput p2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    .line 63
    iput p3, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    .line 64
    iput p4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    .line 65
    return-void
.end method
