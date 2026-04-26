.class public Lcom/badlogic/gdx/math/Ellipse;
.super Ljava/lang/Object;
.source "Ellipse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x66707957a1178663L


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 55
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 56
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 57
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .registers 4
    .param p1, "circle"  # Lcom/badlogic/gdx/math/Circle;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Ellipse;)V
    .registers 3
    .param p1, "ellipse"  # Lcom/badlogic/gdx/math/Ellipse;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;FF)V
    .registers 5
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "width"  # F
    .param p3, "height"  # F

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 68
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 69
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .registers 4
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"  # Lcom/badlogic/gdx/math/Vector2;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 74
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 75
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 76
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 77
    return-void
.end method


# virtual methods
.method public area()F
    .registers 3

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v0, v1

    const v1, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000  # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public circumference()F
    .registers 9

    .line 190
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 191
    .local v0, "a":F
    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    div-float/2addr v2, v1

    .line 192
    .local v2, "b":F
    const/high16 v3, 0x40400000  # 3.0f

    mul-float v4, v0, v3

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_2a

    mul-float v4, v2, v3

    cmpl-float v4, v4, v0

    if-lez v4, :cond_17

    goto :goto_2a

    .line 197
    :cond_17
    mul-float v3, v0, v0

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v5, 0x401921fb60000000L  # 6.2831854820251465

    mul-double/2addr v3, v5

    double-to-float v1, v3

    return v1

    .line 194
    :cond_2a
    :goto_2a
    add-float v1, v0, v2

    mul-float/2addr v1, v3

    float-to-double v4, v1

    mul-float v1, v0, v3

    add-float/2addr v1, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    mul-float/2addr v1, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x400921fb60000000L  # 3.1415927410125732

    mul-double/2addr v4, v6

    double-to-float v1, v4

    return v1
.end method

.method public contains(FF)Z
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    sub-float/2addr p1, v0

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    sub-float/2addr p2, v0

    .line 99
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v1, p2, p2

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 4
    .param p1, "point"  # Lcom/badlogic/gdx/math/Vector2;

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Ellipse;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 204
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 205
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Ellipse;

    .line 206
    .local v2, "e":Lcom/badlogic/gdx/math/Ellipse;
    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iget v4, v2, Lcom/badlogic/gdx/math/Ellipse;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    return v0

    .line 204
    .end local v2  # "e":Lcom/badlogic/gdx/math/Ellipse;
    :cond_38
    :goto_38
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 211
    const/16 v0, 0x35

    .line 212
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 213
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    .end local v1  # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 215
    .end local v2  # "result":I
    .restart local v1  # "result":I
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 216
    .end local v1  # "result":I
    .restart local v2  # "result":I
    mul-int/lit8 v1, v2, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 217
    .end local v2  # "result":I
    .restart local v1  # "result":I
    return v1
.end method

.method public set(FFFF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 118
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 119
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 120
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 121
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 122
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .registers 4
    .param p1, "circle"  # Lcom/badlogic/gdx/math/Circle;

    .line 135
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 136
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 137
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 139
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Ellipse;)V
    .registers 3
    .param p1, "ellipse"  # Lcom/badlogic/gdx/math/Ellipse;

    .line 128
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 129
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 130
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 131
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 132
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .registers 4
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"  # Lcom/badlogic/gdx/math/Vector2;

    .line 142
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 144
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 145
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 146
    return-void
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Ellipse;
    .registers 3
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 163
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 164
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 166
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Ellipse;
    .registers 3
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector2;

    .line 152
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 153
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 155
    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Ellipse;
    .registers 3
    .param p1, "width"  # F
    .param p2, "height"  # F

    .line 174
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 175
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 177
    return-object p0
.end method
