.class public Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;
.super Ljava/lang/Object;
.source "Province_Port_Center.java"


# instance fields
.field public iShiftX:I

.field public iShiftY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "iShiftX"  # I
    .param p2, "iShiftY"  # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    .line 25
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nScale"  # F

    .line 31
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->portIco:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->portIco:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-int v2, v2

    add-int/2addr v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->portIco:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 32
    return-void
.end method

.method public final getShiftX()I
    .registers 2

    .line 37
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    return v0
.end method

.method public final getShiftY()I
    .registers 2

    .line 41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    return v0
.end method
