.class Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;
.super Ljava/lang/Object;
.source "Menu_MM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CivData"
.end annotation


# instance fields
.field civID:I

.field provinces:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "civID"  # I
    .param p2, "provinces"  # I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->civID:I

    .line 194
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;->provinces:I

    .line 195
    return-void
.end method
