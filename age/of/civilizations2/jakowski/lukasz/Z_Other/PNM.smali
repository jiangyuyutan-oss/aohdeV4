.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;
.super Ljava/lang/Object;
.source "PNM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;
    }
.end annotation


# static fields
.field public static NULL_INDICATOR:I

.field public static dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

.field public static pND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/16 v0, 0x29a

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->NULL_INDICATOR:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    .line 368
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$1;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bPND()V
    .registers 4

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "saveData":Z
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iPNamesSize":I
    :goto_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 146
    if-gt v2, v1, :cond_1c

    .line 147
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->bPNP(I)V

    .line 148
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 149
    const/4 v0, 0x1

    .line 152
    :cond_1c
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->bPND(IZ)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 155
    .end local v1  # "i":I
    .end local v2  # "iPNamesSize":I
    :cond_23
    if-eqz v0, :cond_28

    .line 156
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/SaveLoad/SPNM;->saveProvinceNamesPoints()V

    .line 158
    :cond_28
    return-void
.end method

.method public static final bPND(IZ)V
    .registers 29
    .param p0, "i"  # I
    .param p1, "rebuild"  # Z

    .line 174
    move/from16 v1, p0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d0

    .line 177
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_3e

    .line 178
    :try_start_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    .line 182
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    .line 185
    :cond_3e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    invoke-static {v0, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLineWidth3(FFFF)F

    move-result v0

    move v5, v0

    .line 187
    .local v5, "maxWidth":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sub-float/2addr v6, v7

    const v7, 0x3ecccccd  # 0.4f

    mul-float v6, v6, v7

    add-float/2addr v6, v0

    .line 188
    .local v6, "tfX":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sub-float/2addr v8, v9

    mul-float v8, v8, v7

    add-float/2addr v8, v0

    .line 189
    .local v8, "tfY":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sub-float/2addr v9, v10

    mul-float v9, v9, v7

    add-float/2addr v9, v0

    .line 190
    .local v9, "tfX2":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    sub-float/2addr v10, v11

    mul-float v10, v10, v7

    add-float v7, v0, v10

    .line 192
    .local v7, "tfY2":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v10, v0, 0x8

    .line 193
    .local v10, "iPrecision":I
    new-array v0, v10, [Lcom/badlogic/gdx/math/Vector2;

    move-object v11, v0

    .line 195
    .local v11, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    move-object v12, v0

    .line 196
    .local v12, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v6, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v0, v12, v4

    .line 197
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v6, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v13, 0x1

    aput-object v0, v12, v13

    .line 198
    const/4 v0, 0x2

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v15, v15, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    invoke-direct {v14, v15, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v14, v12, v0

    .line 199
    const/4 v0, 0x3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v9, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v12, v0

    .line 200
    const/4 v0, 0x4

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v9, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v12, v0

    .line 202
    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v0, v12, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v2, v0

    .line 204
    .local v2, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_150
    if-ge v0, v10, :cond_166

    .line 205
    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v14}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v14, v11, v0

    .line 206
    aget-object v14, v11, v0

    int-to-float v15, v0

    int-to-float v4, v10

    sub-float/2addr v4, v3

    div-float/2addr v15, v4

    invoke-virtual {v2, v14, v15}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 204
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_150

    .line 209
    .end local v0  # "j":I
    :cond_166
    const/4 v0, 0x0

    .line 211
    .local v0, "tempPrecisionWidth":F
    const/4 v4, 0x0

    move/from16 v26, v4

    move v4, v0

    move/from16 v0, v26

    .local v0, "j":I
    .local v4, "tempPrecisionWidth":F
    :goto_16d
    add-int/lit8 v14, v10, -0x1

    if-ge v0, v14, :cond_190

    .line 212
    aget-object v14, v11, v0

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v15, v11, v0

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v16, v0, 0x1

    aget-object v3, v11, v16

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v16, v0, 0x1

    aget-object v13, v11, v16

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v14, v15, v3, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLineWidth3(FFFF)F

    move-result v3
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_189} :catch_5cf

    add-float/2addr v4, v3

    .line 211
    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v13, 0x1

    goto :goto_16d

    .line 215
    .end local v0  # "j":I
    :cond_190
    const/4 v3, 0x0

    .line 218
    .local v3, "acceptableWidth":F
    :try_start_191
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_19f
    .catch Ljava/lang/ArithmeticException; {:try_start_191 .. :try_end_19f} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19f} :catch_5cf

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    int-to-float v0, v0

    div-float v3, v4, v0

    .line 221
    goto :goto_1a9

    .line 219
    :catch_1a5
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/ArithmeticException;
    :try_start_1a6
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 223
    .end local v0  # "ex":Ljava/lang/ArithmeticException;
    :goto_1a9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 224
    .local v13, "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v14, 0x0

    aget-object v15, v11, v14

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v16, v2

    .end local v2  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .local v16, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v2, v11, v14

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v15, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "currentPointsWidth":F
    const/4 v2, 0x1

    .local v2, "j":I
    const/4 v14, 0x0

    move/from16 v26, v2

    move v2, v0

    move/from16 v0, v26

    .local v0, "j":I
    .local v2, "currentPointsWidth":F
    .local v14, "startPrecision":I
    :goto_1ca
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_230

    .line 229
    :goto_1da
    add-int/lit8 v15, v10, -0x1

    if-ge v14, v15, :cond_221

    .line 230
    aget-object v15, v11, v14

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v18, v4

    .end local v4  # "tempPrecisionWidth":F
    .local v18, "tempPrecisionWidth":F
    aget-object v4, v11, v14

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v19, v14, 0x1

    move/from16 v20, v6

    .end local v6  # "tfX":F
    .local v20, "tfX":F
    aget-object v6, v11, v19

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v19, v14, 0x1

    move/from16 v21, v7

    .end local v7  # "tfY2":F
    .local v21, "tfY2":F
    aget-object v7, v11, v19

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v15, v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLineWidth3(FFFF)F

    move-result v4

    .line 232
    .local v4, "tempPrecisionWidth2":F
    add-float v6, v2, v4

    cmpl-float v6, v6, v3

    if-ltz v6, :cond_217

    .line 233
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v11, v14

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v15, v11, v14

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v6, v7, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-float v6, v2, v4

    sub-float v2, v3, v6

    .line 236
    goto :goto_227

    .line 238
    :cond_217
    add-float/2addr v2, v4

    .line 229
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v18

    move/from16 v6, v20

    move/from16 v7, v21

    goto :goto_1da

    .end local v18  # "tempPrecisionWidth":F
    .end local v20  # "tfX":F
    .end local v21  # "tfY2":F
    .local v4, "tempPrecisionWidth":F
    .restart local v6  # "tfX":F
    .restart local v7  # "tfY2":F
    :cond_221
    move/from16 v18, v4

    move/from16 v20, v6

    move/from16 v21, v7

    .line 228
    .end local v4  # "tempPrecisionWidth":F
    .end local v6  # "tfX":F
    .end local v7  # "tfY2":F
    .restart local v18  # "tempPrecisionWidth":F
    .restart local v20  # "tfX":F
    .restart local v21  # "tfY2":F
    :goto_227
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v18

    move/from16 v6, v20

    move/from16 v7, v21

    goto :goto_1ca

    .end local v18  # "tempPrecisionWidth":F
    .end local v20  # "tfX":F
    .end local v21  # "tfY2":F
    .restart local v4  # "tempPrecisionWidth":F
    .restart local v6  # "tfX":F
    .restart local v7  # "tfY2":F
    :cond_230
    move/from16 v18, v4

    move/from16 v20, v6

    move/from16 v21, v7

    .line 243
    .end local v0  # "j":I
    .end local v4  # "tempPrecisionWidth":F
    .end local v6  # "tfX":F
    .end local v7  # "tfY2":F
    .end local v14  # "startPrecision":I
    .restart local v18  # "tempPrecisionWidth":F
    .restart local v20  # "tfX":F
    .restart local v21  # "tfY2":F
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    array-length v4, v11

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    aget-object v4, v11, v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    array-length v7, v11

    sub-int/2addr v7, v6

    aget-object v6, v11, v7

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v4, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 246
    .local v4, "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x1

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v6

    float-to-double v6, v0

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v0, v0

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v14, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v14

    float-to-double v14, v0

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v14, 0x4066800000000000L  # 180.0

    mul-double v6, v6, v14

    const-wide v14, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v6, v14

    double-to-float v6, v6

    .line 248
    .local v6, "fAngle":F
    const/4 v0, 0x0

    .restart local v0  # "j":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_2a3} :catch_5cf

    move v14, v0

    .end local v0  # "j":I
    .local v7, "jSize":I
    .local v14, "j":I
    :goto_2a4
    if-ge v14, v7, :cond_3aa

    .line 252
    :try_start_2a6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    if-ge v14, v0, :cond_2e9

    .line 253
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2c8} :catch_320

    move/from16 v19, v2

    .end local v2  # "currentPointsWidth":F
    .local v19, "currentPointsWidth":F
    add-int/lit8 v2, v14, 0x1

    :try_start_2cc
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2d4} :catch_2e5

    move/from16 v22, v3

    .end local v3  # "acceptableWidth":F
    .local v22, "acceptableWidth":F
    add-int/lit8 v3, v14, 0x1

    :try_start_2d8
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v15, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLinesAngle2(FFFF)F

    move-result v0

    .local v0, "tempPointsAngle":F
    goto :goto_315

    .line 259
    .end local v0  # "tempPointsAngle":F
    .end local v22  # "acceptableWidth":F
    .restart local v3  # "acceptableWidth":F
    :catch_2e5
    move-exception v0

    move/from16 v22, v3

    .end local v3  # "acceptableWidth":F
    .restart local v22  # "acceptableWidth":F
    goto :goto_325

    .line 255
    .end local v19  # "currentPointsWidth":F
    .end local v22  # "acceptableWidth":F
    .restart local v2  # "currentPointsWidth":F
    .restart local v3  # "acceptableWidth":F
    :cond_2e9
    move/from16 v19, v2

    move/from16 v22, v3

    .end local v2  # "currentPointsWidth":F
    .end local v3  # "acceptableWidth":F
    .restart local v19  # "currentPointsWidth":F
    .restart local v22  # "acceptableWidth":F
    add-int/lit8 v0, v14, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v2, v14, -0x1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v2, v3, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLinesAngle2(FFFF)F

    move-result v0

    .line 258
    .restart local v0  # "tempPointsAngle":F
    :goto_315
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_31c} :catch_31e

    .line 275
    goto/16 :goto_3a2

    .line 259
    .end local v0  # "tempPointsAngle":F
    :catch_31e
    move-exception v0

    goto :goto_325

    .end local v19  # "currentPointsWidth":F
    .end local v22  # "acceptableWidth":F
    .restart local v2  # "currentPointsWidth":F
    .restart local v3  # "acceptableWidth":F
    :catch_320
    move-exception v0

    move/from16 v19, v2

    move/from16 v22, v3

    .end local v2  # "currentPointsWidth":F
    .end local v3  # "acceptableWidth":F
    .restart local v19  # "currentPointsWidth":F
    .restart local v22  # "acceptableWidth":F
    :goto_325
    move-object v2, v0

    .line 262
    .local v2, "ex":Ljava/lang/Exception;
    if-nez v14, :cond_368

    .line 264
    :try_start_328
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v15, v14, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F
    :try_end_342
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_328 .. :try_end_342} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_342} :catch_5cf

    move-object/from16 v23, v2

    .end local v2  # "ex":Ljava/lang/Exception;
    .local v23, "ex":Ljava/lang/Exception;
    add-int/lit8 v2, v14, 0x1

    :try_start_346
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v3, v15, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLinesAngle2(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_359
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_346 .. :try_end_359} :catch_35a
    .catch Ljava/lang/Exception; {:try_start_346 .. :try_end_359} :catch_5cf

    .line 267
    goto :goto_3a2

    .line 265
    :catch_35a
    move-exception v0

    goto :goto_35f

    .end local v23  # "ex":Ljava/lang/Exception;
    .restart local v2  # "ex":Ljava/lang/Exception;
    :catch_35c
    move-exception v0

    move-object/from16 v23, v2

    .line 266
    .end local v2  # "ex":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v23  # "ex":Ljava/lang/Exception;
    :goto_35f
    :try_start_35f
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_366
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_366} :catch_5cf

    .line 267
    nop

    .end local v0  # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_3a2

    .line 270
    .end local v23  # "ex":Ljava/lang/Exception;
    .restart local v2  # "ex":Ljava/lang/Exception;
    :cond_368
    move-object/from16 v23, v2

    .end local v2  # "ex":Ljava/lang/Exception;
    .restart local v23  # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v14, -0x1

    :try_start_36c
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v2, v14, -0x1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v2, v3, v15}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLinesAngle2(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_399
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36c .. :try_end_399} :catch_39a
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_399} :catch_5cf

    .line 273
    goto :goto_3a2

    .line 271
    :catch_39a
    move-exception v0

    .line 272
    .restart local v0  # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_39b
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v0  # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v23  # "ex":Ljava/lang/Exception;
    :goto_3a2
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    move/from16 v3, v22

    goto/16 :goto_2a4

    .end local v19  # "currentPointsWidth":F
    .end local v22  # "acceptableWidth":F
    .local v2, "currentPointsWidth":F
    .restart local v3  # "acceptableWidth":F
    :cond_3aa
    move/from16 v19, v2

    move/from16 v22, v3

    .line 278
    .end local v2  # "currentPointsWidth":F
    .end local v3  # "acceptableWidth":F
    .end local v7  # "jSize":I
    .end local v14  # "j":I
    .restart local v19  # "currentPointsWidth":F
    .restart local v22  # "acceptableWidth":F
    const v0, 0x3f4ccccd  # 0.8f

    mul-float v2, v5, v0

    .line 280
    .local v2, "iDistance":F
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;-><init>()V

    move-object v3, v0

    .line 282
    .local v3, "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    const-class v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;

    monitor-enter v7
    :try_end_3bc
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_3bc} :catch_5cf

    .line 283
    :try_start_3bc
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "tempNumOfIterations":I
    iget v14, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    div-float v14, v2, v14

    const v15, 0x3dcccccd  # 0.1f

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 290
    .local v14, "tempScale":F
    iget v15, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F
    :try_end_3e4
    .catchall {:try_start_3bc .. :try_end_3e4} :catchall_5c6

    const v17, 0x3dcccccd  # 0.1f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_3fc

    .line 291
    :try_start_3eb
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_3f4
    .catchall {:try_start_3eb .. :try_end_3f4} :catchall_3f5

    goto :goto_3fc

    .line 332
    .end local v0  # "tempNumOfIterations":I
    .end local v14  # "tempScale":F
    :catchall_3f5
    move-exception v0

    move/from16 v17, v5

    move/from16 v25, v6

    goto/16 :goto_5cb

    .line 295
    .restart local v0  # "tempNumOfIterations":I
    .restart local v14  # "tempScale":F
    :cond_3fc
    :goto_3fc
    const/4 v15, 0x0

    cmpl-float v17, v2, v15

    if-lez v17, :cond_4cd

    move v15, v14

    move v14, v0

    .line 297
    .end local v0  # "tempNumOfIterations":I
    .local v14, "tempNumOfIterations":I
    .local v15, "tempScale":F
    :goto_403
    move/from16 v17, v5

    .end local v5  # "maxWidth":F
    .local v17, "maxWidth":F
    :try_start_405
    iget v0, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    const v23, 0x3c4ccccd  # 0.0125f

    const v5, 0x3a83126f  # 0.001f

    const v24, 0x3ccccccd  # 0.025f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_457

    .line 298
    add-float v15, v15, v24

    .line 300
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 304
    iget v0, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_454

    .line 305
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_440} :catch_4bc
    .catchall {:try_start_405 .. :try_end_440} :catchall_4b7

    sub-float v5, v15, v23

    move/from16 v25, v6

    const v6, 0x38d1b717  # 1.0E-4f

    .end local v6  # "fAngle":F
    .local v25, "fAngle":F
    :try_start_447
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F
    :try_end_44d
    .catch Ljava/lang/Exception; {:try_start_447 .. :try_end_44d} :catch_451
    .catchall {:try_start_447 .. :try_end_44d} :catchall_5cd

    .line 306
    move v0, v14

    move v14, v15

    goto/16 :goto_4d1

    .line 328
    :catch_451
    move-exception v0

    goto/16 :goto_4bf

    .line 304
    .end local v25  # "fAngle":F
    .restart local v6  # "fAngle":F
    :cond_454
    move/from16 v25, v6

    .end local v6  # "fAngle":F
    .restart local v25  # "fAngle":F
    goto :goto_494

    .line 310
    .end local v25  # "fAngle":F
    .restart local v6  # "fAngle":F
    :cond_457
    move/from16 v25, v6

    .end local v6  # "fAngle":F
    .restart local v25  # "fAngle":F
    sub-float v6, v15, v24

    .line 311
    .end local v15  # "tempScale":F
    .local v6, "tempScale":F
    :try_start_45b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 313
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 315
    iget v0, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_493

    .line 316
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    add-float v5, v6, v23

    const v15, 0x38d1b717  # 1.0E-4f

    invoke-static {v15, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F
    :try_end_490
    .catch Ljava/lang/Exception; {:try_start_45b .. :try_end_490} :catch_4b4
    .catchall {:try_start_45b .. :try_end_490} :catchall_5cd

    .line 317
    move v0, v14

    move v14, v6

    goto :goto_4d1

    .line 315
    :cond_493
    move v15, v6

    .line 321
    .end local v6  # "tempScale":F
    .restart local v15  # "tempScale":F
    :goto_494
    add-int/lit8 v5, v14, 0x1

    .end local v14  # "tempNumOfIterations":I
    .local v5, "tempNumOfIterations":I
    const/16 v0, 0x3e7

    if-le v14, v0, :cond_4ad

    .line 323
    :try_start_49a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    const v6, 0x38d1b717  # 1.0E-4f

    iput v6, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_49a .. :try_end_4a7} :catch_4aa
    .catchall {:try_start_49a .. :try_end_4a7} :catchall_5cd

    .line 324
    move v0, v5

    move v14, v15

    goto :goto_4d1

    .line 328
    :catch_4aa
    move-exception v0

    move v14, v5

    goto :goto_4bf

    .line 321
    :cond_4ad
    move v14, v5

    move/from16 v5, v17

    move/from16 v6, v25

    goto/16 :goto_403

    .line 328
    .end local v5  # "tempNumOfIterations":I
    .end local v15  # "tempScale":F
    .restart local v6  # "tempScale":F
    .restart local v14  # "tempNumOfIterations":I
    :catch_4b4
    move-exception v0

    move v15, v6

    goto :goto_4bf

    .line 332
    .end local v14  # "tempNumOfIterations":I
    .end local v25  # "fAngle":F
    .local v6, "fAngle":F
    :catchall_4b7
    move-exception v0

    move/from16 v25, v6

    .end local v6  # "fAngle":F
    .restart local v25  # "fAngle":F
    goto/16 :goto_5cb

    .line 328
    .end local v25  # "fAngle":F
    .restart local v6  # "fAngle":F
    .restart local v14  # "tempNumOfIterations":I
    .restart local v15  # "tempScale":F
    :catch_4bc
    move-exception v0

    move/from16 v25, v6

    .line 329
    .end local v6  # "fAngle":F
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v25  # "fAngle":F
    :goto_4bf
    :try_start_4bf
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    const v6, 0x38d1b717  # 1.0E-4f

    iput v6, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    goto :goto_4d2

    .line 295
    .end local v15  # "tempScale":F
    .end local v17  # "maxWidth":F
    .end local v25  # "fAngle":F
    .local v0, "tempNumOfIterations":I
    .local v5, "maxWidth":F
    .restart local v6  # "fAngle":F
    .local v14, "tempScale":F
    :cond_4cd
    move/from16 v17, v5

    move/from16 v25, v6

    .line 331
    .end local v5  # "maxWidth":F
    .end local v6  # "fAngle":F
    .restart local v17  # "maxWidth":F
    .restart local v25  # "fAngle":F
    :goto_4d1
    nop

    .line 332
    .end local v0  # "tempNumOfIterations":I
    .end local v14  # "tempScale":F
    :goto_4d2
    monitor-exit v7
    :try_end_4d3
    .catchall {:try_start_4bf .. :try_end_4d3} :catchall_5cd

    .line 336
    const/4 v0, 0x0

    .local v0, "j":I
    :try_start_4d4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "jSize":I
    :goto_4d8
    if-ge v0, v5, :cond_501

    .line 337
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v14, v14

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v15, v15

    invoke-direct {v7, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d8

    .line 340
    .end local v0  # "j":I
    .end local v5  # "jSize":I
    :cond_501
    const/4 v0, 0x0

    .restart local v0  # "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5  # "jSize":I
    :goto_506
    if-ge v0, v5, :cond_52d

    .line 342
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    new-instance v7, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v7, v14, v15}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_506

    .line 345
    .end local v0  # "j":I
    .end local v5  # "jSize":I
    :cond_52d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v6, v5, v7, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getLinesAngle2(FFFF)F

    move-result v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    .line 347
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "a":I
    :goto_576
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5a2

    .line 348
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_576

    .line 351
    .end local v0  # "a":I
    :cond_5a2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c4
    .catch Ljava/lang/Exception; {:try_start_4d4 .. :try_end_5c4} :catch_5cf

    .line 354
    nop

    .end local v2  # "iDistance":F
    .end local v3  # "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    .end local v4  # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8  # "tfY":F
    .end local v9  # "tfX2":F
    .end local v10  # "iPrecision":I
    .end local v11  # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v12  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v16  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v17  # "maxWidth":F
    .end local v18  # "tempPrecisionWidth":F
    .end local v19  # "currentPointsWidth":F
    .end local v20  # "tfX":F
    .end local v21  # "tfY2":F
    .end local v22  # "acceptableWidth":F
    .end local v25  # "fAngle":F
    goto :goto_5d0

    .line 332
    .restart local v2  # "iDistance":F
    .restart local v3  # "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    .restart local v4  # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "maxWidth":F
    .restart local v6  # "fAngle":F
    .restart local v8  # "tfY":F
    .restart local v9  # "tfX2":F
    .restart local v10  # "iPrecision":I
    .restart local v11  # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v12  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v13  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v16  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v18  # "tempPrecisionWidth":F
    .restart local v19  # "currentPointsWidth":F
    .restart local v20  # "tfX":F
    .restart local v21  # "tfY2":F
    .restart local v22  # "acceptableWidth":F
    :catchall_5c6
    move-exception v0

    move/from16 v17, v5

    move/from16 v25, v6

    .end local v5  # "maxWidth":F
    .end local v6  # "fAngle":F
    .restart local v17  # "maxWidth":F
    .restart local v25  # "fAngle":F
    :goto_5cb
    :try_start_5cb
    monitor-exit v7
    :try_end_5cc
    .catchall {:try_start_5cb .. :try_end_5cc} :catchall_5cd

    .end local p0  # "i":I
    .end local p1  # "rebuild":Z
    :try_start_5cc
    throw v0
    :try_end_5cd
    .catch Ljava/lang/Exception; {:try_start_5cc .. :try_end_5cd} :catch_5cf

    .restart local p0  # "i":I
    .restart local p1  # "rebuild":Z
    :catchall_5cd
    move-exception v0

    goto :goto_5cb

    .line 352
    .end local v2  # "iDistance":F
    .end local v3  # "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    .end local v4  # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8  # "tfY":F
    .end local v9  # "tfX2":F
    .end local v10  # "iPrecision":I
    .end local v11  # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v12  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13  # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v16  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v17  # "maxWidth":F
    .end local v18  # "tempPrecisionWidth":F
    .end local v19  # "currentPointsWidth":F
    .end local v20  # "tfX":F
    .end local v21  # "tfY2":F
    .end local v22  # "acceptableWidth":F
    .end local v25  # "fAngle":F
    :catch_5cf
    move-exception v0

    .line 357
    :cond_5d0
    :goto_5d0
    return-void
.end method

.method public static bPNP(I)V
    .registers 23
    .param p0, "i"  # I

    .line 31
    move/from16 v0, p0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;-><init>()V

    .line 33
    .local v1, "nameData":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    const/4 v2, 0x0

    .line 35
    .local v2, "wMU":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v3, "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_25

    .line 38
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 41
    .end local v4  # "j":I
    :cond_25
    const/4 v4, 0x0

    .line 43
    .local v4, "checkedWidthNum":I
    :goto_26
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v5

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_2b7

    const/16 v5, 0x12b

    if-ge v4, v5, :cond_2b7

    .line 44
    const/4 v5, 0x0

    .line 45
    .local v5, "iID":I
    const/4 v8, 0x1

    .line 47
    .local v8, "jID":I
    add-int/lit8 v4, v4, 0x2

    .line 48
    const/4 v2, 0x0

    .line 52
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3e
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_132

    .line 53
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_12e

    .line 54
    add-int/lit8 v10, v9, 0x1

    .local v10, "k":I
    :goto_5a
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v11

    if-ge v10, v11, :cond_12e

    .line 55
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_12a

    .line 56
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v12

    sub-int/2addr v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v13

    sub-int/2addr v12, v13

    mul-int v11, v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v13

    sub-int/2addr v12, v13

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v14

    sub-int/2addr v13, v14

    mul-int v12, v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 58
    .local v11, "tWidth":F
    cmpl-float v12, v11, v2

    if-lez v12, :cond_12a

    .line 59
    move v2, v11

    .line 60
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    .line 61
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoX9(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    .line 63
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    .line 64
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPoY2(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    .line 66
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    .line 67
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    .line 69
    move v5, v9

    .line 70
    move v8, v10

    .line 54
    .end local v11  # "tWidth":F
    :cond_12a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5a

    .line 52
    .end local v10  # "k":I
    :cond_12e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3e

    .line 77
    .end local v9  # "j":I
    :cond_132
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    iget v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_158

    .line 81
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    .line 82
    .local v9, "tSw":F
    iget v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    .line 83
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    .line 85
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    .line 86
    iget v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    iput v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    .line 87
    iput v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    .line 90
    .end local v9  # "tSw":F
    :cond_158
    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v10

    int-to-float v10, v10

    iget v12, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    sub-float/2addr v10, v12

    const v12, 0x3ecccccd  # 0.4f

    mul-float v10, v10, v12

    add-float/2addr v9, v10

    .line 91
    .local v9, "tfX":F
    iget v10, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v13

    int-to-float v13, v13

    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    sub-float/2addr v13, v14

    mul-float v13, v13, v12

    add-float/2addr v10, v13

    .line 92
    .local v10, "tfY":F
    iget v13, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v14

    int-to-float v14, v14

    iget v15, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    sub-float/2addr v14, v15

    mul-float v14, v14, v12

    add-float/2addr v13, v14

    .line 93
    .local v13, "tfX2":F
    iget v14, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v15, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v15

    int-to-float v15, v15

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    sub-float/2addr v15, v7

    mul-float v15, v15, v12

    add-float/2addr v14, v15

    .line 95
    .local v14, "tfY2":F
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x4

    mul-int/lit8 v7, v7, 0x4

    .line 96
    .local v7, "iPrecision":I
    new-array v15, v7, [Lcom/badlogic/gdx/math/Vector2;

    .line 98
    .local v15, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v12, 0x5

    new-array v12, v12, [Lcom/badlogic/gdx/math/Vector2;

    .line 99
    .local v12, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v12, v6

    .line 100
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v11, v12, v18

    .line 101
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v6

    int-to-float v6, v6

    move/from16 v19, v2

    .end local v2  # "wMU":F
    .local v19, "wMU":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v11, v6, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v11, v12, v2

    .line 102
    const/4 v2, 0x3

    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v6, v13, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v6, v12, v2

    .line 103
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v13, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x4

    aput-object v2, v12, v6

    .line 105
    const/4 v2, 0x1

    .line 107
    .local v2, "isInProvince":Z
    new-instance v6, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v11, 0x0

    invoke-direct {v6, v12, v11}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 109
    .local v6, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "j":I
    :goto_208
    if-ge v11, v7, :cond_22c

    .line 110
    new-instance v16, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct/range {v16 .. v16}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v16, v15, v11

    .line 111
    move/from16 v16, v2

    .end local v2  # "isInProvince":Z
    .local v16, "isInProvince":Z
    aget-object v2, v15, v11

    move-object/from16 v17, v3

    .end local v3  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v17, "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    int-to-float v3, v11

    move/from16 v20, v4

    .end local v4  # "checkedWidthNum":I
    .local v20, "checkedWidthNum":I
    int-to-float v4, v7

    const/high16 v21, 0x3f800000  # 1.0f

    sub-float v4, v4, v21

    div-float/2addr v3, v4

    invoke-virtual {v6, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 109
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v20

    goto :goto_208

    .end local v16  # "isInProvince":Z
    .end local v17  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v20  # "checkedWidthNum":I
    .restart local v2  # "isInProvince":Z
    .restart local v3  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4  # "checkedWidthNum":I
    :cond_22c
    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v20, v4

    .line 114
    .end local v2  # "isInProvince":Z
    .end local v3  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4  # "checkedWidthNum":I
    .end local v11  # "j":I
    .restart local v16  # "isInProvince":Z
    .restart local v17  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v20  # "checkedWidthNum":I
    array-length v2, v15

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_235
    if-ltz v2, :cond_2a6

    .line 115
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    aget-object v11, v15, v2

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    invoke-virtual {v3, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    if-ne v3, v0, :cond_2a3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v11

    aget-object v11, v15, v2

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    .line 116
    invoke-virtual {v3, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    if-ne v3, v0, :cond_2a3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v4, v11

    aget-object v11, v15, v2

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    .line 117
    invoke-virtual {v3, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    if-ne v3, v0, :cond_2a3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    aget-object v11, v15, v2

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v11, v11, v18

    .line 118
    invoke-virtual {v3, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    if-ne v3, v0, :cond_2a3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    aget-object v11, v15, v2

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v11, v11, v18

    .line 119
    invoke-virtual {v3, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProviPoint(II)I

    move-result v3

    if-eq v3, v0, :cond_2a0

    goto :goto_2a3

    .line 114
    :cond_2a0
    add-int/lit8 v2, v2, -0x1

    goto :goto_235

    .line 121
    :cond_2a3
    :goto_2a3
    const/4 v3, 0x0

    .line 122
    .end local v16  # "isInProvince":Z
    .local v3, "isInProvince":Z
    move v2, v3

    goto :goto_2a8

    .line 114
    .end local v3  # "isInProvince":Z
    .restart local v16  # "isInProvince":Z
    :cond_2a6
    move/from16 v2, v16

    .line 126
    .end local v16  # "isInProvince":Z
    .local v2, "isInProvince":Z
    :goto_2a8
    if-eqz v2, :cond_2ae

    .line 127
    const/4 v4, -0x1

    .line 128
    .end local v20  # "checkedWidthNum":I
    .restart local v4  # "checkedWidthNum":I
    move/from16 v2, v19

    goto :goto_2b9

    .line 130
    .end local v2  # "isInProvince":Z
    .end local v4  # "checkedWidthNum":I
    .end local v5  # "iID":I
    .end local v6  # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v7  # "iPrecision":I
    .end local v8  # "jID":I
    .end local v9  # "tfX":F
    .end local v10  # "tfY":F
    .end local v12  # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13  # "tfX2":F
    .end local v14  # "tfY2":F
    .end local v15  # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v20  # "checkedWidthNum":I
    :cond_2ae
    move-object/from16 v3, v17

    move/from16 v2, v19

    move/from16 v4, v20

    const/4 v6, 0x0

    goto/16 :goto_26

    .line 43
    .end local v17  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v19  # "wMU":F
    .end local v20  # "checkedWidthNum":I
    .local v2, "wMU":F
    .local v3, "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4  # "checkedWidthNum":I
    :cond_2b7
    move-object/from16 v17, v3

    .line 132
    .end local v3  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v17  # "nS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_2b9
    if-lez v4, :cond_2c2

    .line 134
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c7

    .line 137
    :cond_2c2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_2c7
    return-void
.end method

.method public static cPND(I)V
    .registers 3
    .param p0, "i"  # I

    .line 162
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 163
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    .line 167
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    .line 169
    :cond_39
    return-void
.end method

.method public static final declared-synchronized dPNJD(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;

    monitor-enter v0

    .line 479
    :try_start_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    .line 480
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_NAMES_ALPHA:F

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 482
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPNJDI(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 484
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 485
    monitor-exit v0

    return-void

    .line 478
    .end local v1  # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final dPNJDI(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_12

    .line 495
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPRNA(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    .end local v0  # "i":I
    :cond_12
    goto :goto_17

    .line 501
    :catch_13
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 504
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method public static final declared-synchronized dPNJMD(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;

    monitor-enter v0

    .line 511
    :try_start_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    .line 512
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_NAMES_ALPHA:F

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 514
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPNJMDI(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_29
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    .line 519
    .end local v1  # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_2a

    .line 510
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0

    .line 517
    .restart local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catch_29
    move-exception v1

    .line 520
    :goto_2a
    monitor-exit v0

    return-void
.end method

.method public static final dPNJMDI(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_12

    .line 530
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPNM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    .end local v0  # "i":I
    :cond_12
    goto :goto_17

    .line 536
    :catch_13
    move-exception v0

    .line 537
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 539
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method public static final declared-synchronized dPNM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 10
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"  # I
    .param p2, "extraX"  # I

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;

    monitor-enter v0

    .line 574
    :try_start_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_ce

    if-nez v1, :cond_d

    .line 575
    monitor-exit v0

    return-void

    .line 578
    :cond_d
    :try_start_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_ce

    if-eqz v1, :cond_1f

    .line 579
    monitor-exit v0

    return-void

    .line 584
    :cond_1f
    :try_start_1f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    mul-float v1, v1, v2

    .line 586
    .local v1, "fontScale":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_NAMES_SCALE:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_cc

    .line 587
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 590
    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v3

    add-int/2addr v3, p2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    .line 591
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 592
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    .line 593
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawAngleLow:F

    .line 589
    invoke-static {p0, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IIF)V
    :try_end_cc
    .catchall {:try_start_1f .. :try_end_cc} :catchall_ce

    .line 595
    :cond_cc
    monitor-exit v0

    return-void

    .line 573
    .end local v1  # "fontScale":F
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1  # "i":I
    .end local p2  # "extraX":I
    :catchall_ce
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final dPNP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 9
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"  # I

    .line 599
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 600
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->firstPoint:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->centerPoint:Z

    if-nez v0, :cond_15

    .line 601
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 603
    :cond_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 604
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 605
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->centerPoint:Z

    if-eqz v0, :cond_5d

    .line 606
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 608
    :cond_5d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fCenterY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 609
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 610
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->firstPoint:Z

    if-nez v0, :cond_a9

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->centerPoint:Z

    if-nez v0, :cond_a9

    .line 611
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 613
    :cond_a9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fX2:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fY2:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 614
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 616
    :cond_e8
    return-void
.end method

.method public static final declared-synchronized dPRNA(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 11
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"  # I
    .param p2, "extraX"  # I

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;

    monitor-enter v0

    .line 543
    :try_start_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_ad

    if-nez v1, :cond_d

    .line 544
    monitor-exit v0

    return-void

    .line 549
    :cond_d
    :try_start_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->pND:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;

    .line 551
    .local v1, "tPN":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->fontScale:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v2, v2, v3

    .line 553
    .local v2, "fontScale":F
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->PROVINCE_NAMES_SCALE:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a9

    .line 554
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 556
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v3

    add-int/2addr p2, v3

    .line 558
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceNameLength_Minus1:I

    .local v3, "j":I
    :goto_47
    if-ltz v3, :cond_a9

    .line 559
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 560
    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvNameUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    .line 561
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, p2

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 562
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawPoints:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Provinces/Point_XY;->getPosY()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;->drawMatrix4:Ljava/util/List;

    .line 563
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    .line 559
    invoke-static {p0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a6} :catch_aa
    .catchall {:try_start_d .. :try_end_a6} :catchall_ad

    .line 558
    add-int/lit8 v3, v3, -0x1

    goto :goto_47

    .line 569
    .end local v1  # "tPN":Lage/of/civilizations2/jakowski/lukasz/Z_Other/PND;
    .end local v2  # "fontScale":F
    .end local v3  # "j":I
    :cond_a9
    goto :goto_ab

    .line 566
    :catch_aa
    move-exception v1

    .line 570
    :goto_ab
    monitor-exit v0

    return-void

    .line 542
    .end local p0  # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1  # "i":I
    .end local p2  # "extraX":I
    :catchall_ad
    move-exception p0

    monitor-exit v0

    goto :goto_b1

    :goto_b0
    throw p0

    :goto_b1
    goto :goto_b0
.end method

.method public static final uDPN()V
    .registers 2

    .line 374
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_InitMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGamesMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInEditorMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_SKMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_MMMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_FBMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_NVMenu()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_Game_CivilizationView()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadSave()Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_SaveTheGame()Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_a4

    .line 382
    :cond_61
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SPROVN:I

    if-nez v0, :cond_6f

    .line 383
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$3;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    goto :goto_ab

    .line 389
    :cond_6f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SPROVN:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapIDN()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapProvinceNames(I)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_9c

    .line 396
    :cond_85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SPROVN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_94

    .line 397
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$5;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$5;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    goto :goto_ab

    .line 413
    :cond_94
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$6;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$6;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    goto :goto_ab

    .line 390
    :cond_9c
    :goto_9c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$4;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$4;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    goto :goto_ab

    .line 375
    :cond_a4
    :goto_a4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$2;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$2;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;

    .line 429
    :goto_ab
    return-void
.end method

.method public static uDPNA()V
    .registers 9

    .line 434
    :try_start_0
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    .line 437
    .local v0, "now":J
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Render;->CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE:F

    const/high16 v4, 0x3f800000  # 1.0f

    const-wide/16 v5, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_40

    .line 439
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3d

    .line 440
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_24

    .line 441
    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    .line 443
    :cond_24
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->CIVILIZATIONS_NAMES_INTERVAL:F

    div-float/2addr v2, v3

    .line 444
    .local v2, "progress":F
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 446
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6b

    .line 447
    sput v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 448
    sput-wide v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    goto :goto_6b

    .line 451
    .end local v2  # "progress":F
    :cond_3d
    sput-wide v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    goto :goto_6b

    .line 455
    :cond_40
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_69

    .line 456
    sget-wide v7, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_4f

    .line 457
    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    .line 459
    :cond_4f
    sget-wide v7, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    sub-long v7, v0, v7

    long-to-float v2, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->CIVILIZATIONS_NAMES_INTERVAL:F

    div-float/2addr v2, v7

    .line 460
    .restart local v2  # "progress":F
    sub-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 462
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6b

    .line 463
    sput v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 464
    sput-wide v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J

    goto :goto_6b

    .line 467
    .end local v2  # "progress":F
    :cond_69
    sput-wide v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_TIME:J
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    .line 472
    .end local v0  # "now":J
    :cond_6b
    :goto_6b
    goto :goto_70

    .line 470
    :catch_6c
    move-exception v0

    .line 471
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 473
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_70
    return-void
.end method
