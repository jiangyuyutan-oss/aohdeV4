.class public Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;
.super Ljava/lang/Object;
.source "Province_Cores_Civs_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public fPercPop:F

.field public iCivID:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nPerc"  # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    .line 22
    int-to-float v0, p2

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    .line 23
    return-void
.end method


# virtual methods
.method public final setPerc(F)V
    .registers 4
    .param p1, "nPerc"  # F

    .line 26
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    .line 28
    const v0, 0x3c23d70a  # 0.01f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    goto :goto_14

    .line 30
    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->fPercPop:F

    .line 33
    :cond_14
    :goto_14
    return-void
.end method
