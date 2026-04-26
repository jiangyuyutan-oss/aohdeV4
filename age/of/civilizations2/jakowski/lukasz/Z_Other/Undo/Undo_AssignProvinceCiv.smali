.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/Undo_AssignProvinceCiv;
.super Ljava/lang/Object;
.source "Undo_AssignProvinceCiv.java"


# instance fields
.field private iCivID:I

.field private iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "iCivID"  # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/Undo_AssignProvinceCiv;->iProvinceID:I

    .line 18
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/Undo_AssignProvinceCiv;->iCivID:I

    .line 19
    return-void
.end method


# virtual methods
.method public final getCivID()I
    .registers 2

    .line 28
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/Undo_AssignProvinceCiv;->iCivID:I

    return v0
.end method

.method public final getProvinceID()I
    .registers 2

    .line 24
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/Undo_AssignProvinceCiv;->iProvinceID:I

    return v0
.end method
