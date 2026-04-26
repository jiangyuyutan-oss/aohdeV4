.class public Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;
.super Ljava/lang/Object;
.source "Flag_Overlay.java"


# instance fields
.field public Scale:F

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "Scale"  # F

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->sName:Ljava/lang/String;

    .line 12
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->Scale:F

    .line 15
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->sName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->Scale:F

    .line 17
    return-void
.end method
