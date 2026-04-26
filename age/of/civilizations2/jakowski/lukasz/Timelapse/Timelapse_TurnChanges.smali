.class public Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;
.super Ljava/lang/Object;
.source "Timelapse_TurnChanges.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iProvinceID:I

.field public iToCivID:I

.field public isOccupied:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .param p1, "iProvinceID"  # I
    .param p2, "iToCivID"  # I
    .param p3, "isOccupied"  # Z

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->isOccupied:Z

    .line 22
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iProvinceID:I

    .line 24
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->iToCivID:I

    .line 25
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse/Timelapse_TurnChanges;->isOccupied:Z

    .line 26
    return-void
.end method
