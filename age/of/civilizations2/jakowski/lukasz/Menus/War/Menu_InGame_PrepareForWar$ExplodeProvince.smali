.class public Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$ExplodeProvince;
.super Ljava/lang/Object;
.source "Menu_InGame_PrepareForWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExplodeProvince"
.end annotation


# instance fields
.field public civID:I

.field public provinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "civID"  # I
    .param p2, "provinceID"  # I

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$ExplodeProvince;->civID:I

    .line 427
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/War/Menu_InGame_PrepareForWar$ExplodeProvince;->provinceID:I

    .line 428
    return-void
.end method
